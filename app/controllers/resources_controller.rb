class ResourcesController < ApplicationController
  def index
    @resources = Resource.all
  end

  def show
    @resource = Resource.find(params[:id])
  end

  def new
    @resource = Resource.new
  end

  def create
    @resource = Resource.new
    @resource.user_id = params[:user_id]
    @resource.project_id = params[:project_id]
    @resource.resource_question = params[:resource_question]

    if @resource.save
      redirect_to "/resources", :notice => "Resource created successfully."
    else
      render 'new'
    end
  end

  def edit
    @resource = Resource.find(params[:id])
  end

  def update
    @resource = Resource.find(params[:id])

    @resource.user_id = params[:user_id]
    @resource.project_id = params[:project_id]
    @resource.resource_question = params[:resource_question]

    if @resource.save
      redirect_to "/resources", :notice => "Resource updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @resource = Resource.find(params[:id])

    @resource.destroy

    redirect_to "/resources", :notice => "Resource deleted."
  end
end
