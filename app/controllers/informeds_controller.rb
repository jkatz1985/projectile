class InformedsController < ApplicationController
  def index
    @informeds = Informed.all
  end

  def show
    @informed = Informed.find(params[:id])
  end

  def new
    @informed = Informed.new
  end

  def create
    @informed = Informed.new
    @informed.user_id = params[:user_id]
    @informed.project_id = params[:project_id]

    if @informed.save
      redirect_to "/informeds", :notice => "Informed created successfully."
    else
      render 'new'
    end
  end

  def edit
    @informed = Informed.find(params[:id])
  end

  def update
    @informed = Informed.find(params[:id])

    @informed.user_id = params[:user_id]
    @informed.project_id = params[:project_id]

    if @informed.save
      redirect_to "/informeds", :notice => "Informed updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @informed = Informed.find(params[:id])

    @informed.destroy

    redirect_to "/informeds", :notice => "Informed deleted."
  end
end
