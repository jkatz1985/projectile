class ProjectLikesController < ApplicationController
  def index
    @project_likes = ProjectLike.all
  end

  def show
    @project_like = ProjectLike.find(params[:id])
  end

  def new
    @project_like = ProjectLike.new
  end

  def create
    @project_like = ProjectLike.new
    @project_like.project_id = params[:project_id]
    @project_like.user_id = params[:user_id]

    if @project_like.save
      redirect_to "/projects", :notice => "You liked #{@project_like.project.project_name}!"
    else
      redirect_to "/projects", :alert => "You have already liked this project"
    end
  end

  def edit
    @project_like = ProjectLike.find(params[:id])
  end

  def update
    @project_like = ProjectLike.find(params[:id])

    @project_like.project_id = params[:project_id]
    @project_like.user_id = params[:user_id]

    if @project_like.save
      redirect_to "/project_likes", :notice => "Project like updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @project_like = ProjectLike.find(params[:id])

    @project_like.destroy

    redirect_to "/projects", :notice => "You Unliked #{@project_like.project.project_name}!"
  end
end
