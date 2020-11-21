class CommentsController < ApplicationController
  before_action :find_comment, :authenticate_user!
  load_and_authorize_resource
  
  def create
    @comment = @activity.comments.create(comment_params)
    @comment.user_id = current_user.id if current_user
    @comment.save
    redirect_to activity_path(@activity)
  end

  def destroy
    @comment = @activity.comments.find(params[:id])
    @comment.destroy
    redirect_to activity_path(@activity)
  end

  def edit
    @comment = @activity.comments.find(params[:id])
  end

  def update
    @comment = @activity.comments.find(params[:id])
    if @comment.update(comment_params)
      redirect_to activity_path(@activity)
    else
      render 'edit'
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:content)
  end

  def find_comment
    @activity = Activity.find(params[:activity_id])
  end
end
