class ActivitiesController < ApplicationController
  before_action :find_activity, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]
  load_and_authorize_resource

  def index
    @activities = Activity.all.order("created_at DESC")
  end

  def show
  end

  def new
    @activity = current_user.activities.build
  end

  def create
    @activity = current_user.activities.build(activity_params)

    if @activity.save
      redirect_to @activity
      flash[:notice] = "게시물을 등록했습니다."
    else
      render :new # FIXME: fix url being changed when validation error happens
    end
  end

  def edit
  end

  def update
    if @activity.update(activity_params)
      redirect_to @activity
      flash[:notice] = "게시물을 수정했습니다."
    else
      render :edit
    end
  end

  def destroy
    @activity.destroy
    redirect_to activities_path
    flash[:notice] = "게시물을 삭제했습니다."
  end

  private

  def activity_params
    params[:activity][:user_id] = current_user.id
    params.require(:activity).permit(:title, :content, :user_id)
  end

  def find_activity
    @activity = Activity.find(params[:id])
  end
end
