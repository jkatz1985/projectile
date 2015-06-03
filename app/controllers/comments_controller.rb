class CommentsController < ApplicationController
  def index
    @comments = Comment.all
  end

  def show
    @comment = Comment.find(params[:id])
  end

  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.new
    @comment.project_id = params[:project_id]
    @comment.comment = params[:new_comment]
    @comment.user_id = params[:user_id]

    if @comment.save
      redirect_to "/projects/#{params[:project_id]}", :notice => "Your Comment was posted"
    else
      render "/projects/#{params[:project_id]}"
    end
  end

  def edit
    @comment = Comment.find(params[:id])
  end

  def update
    @comment = Comment.find(params[:id])

    @comment.project_id = params[:project_id]
    @comment.comment = params[:comment]
    @comment.user_id = params[:user_id]

    if @comment.save
      redirect_to "/comments", :notice => "Comment updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @comment = Comment.find(params[:id])

    @comment.destroy

    redirect_to "/comments", :notice => "Comment deleted."
  end
end
