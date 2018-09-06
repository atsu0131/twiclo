class LikesController < ApplicationController
  
  def show
    @micropost = Micropost.find(params[:micropost_id])
  end
  
  def create
    micropost = Micropost.find(params[:micropost_id])
    current_user.like(micropost)
    flash[:success] = 'お気に入りしました。'
    redirect_to users_path
  end

  def destroy
    micropost = Micropost.find(params[:micropost_id])
    current_user.unlike(micropost)
    flash[:success] = 'お気に入りを解除しました。'
    redirect_to users_path
  end
end
