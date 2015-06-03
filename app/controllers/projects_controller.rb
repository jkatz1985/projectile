class ProjectsController < ApplicationController
  def index
    @my_projects = current_user.projects
    @all_projects = Project.all
    @liked_projects = current_user.liked_projects
    # @project = Project.find(params[:id])
  end

  def show
    @project = Project.find(params[:id])

    @show_comments = @project.comments.order("created_at DESC")

    @new_comment = Comment.new

  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new
    @project.project_name = params[:project_name]
    @project.user_id = current_user.id
    @project.description = params[:description]
    @project.customer_pain = params[:customer_pain]
    @project.status = params[:status]
    @project.manager_id = params[:manager_id]

    if @project.save
      redirect_to "/projects", :notice => "Project created successfully."
    else
      render 'new'
    end
  end

  def edit
    @project = Project.find(params[:id])
  end

  def update
    @project = Project.find(params[:id])

    @project.project_name = params[:project_name]
    @project.user_id = params[:user_id]
    @project.description = params[:description]
    @project.customer_pain = params[:customer_pain]
    @project.status = params[:status]
    @project.manager_id = params[:manager_id]

    if @project.save
      redirect_to "/projects", :notice => "Project updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @project = Project.find(params[:id])

    @project.destroy

    redirect_to "/projects", :notice => "Project deleted."
  end
end
