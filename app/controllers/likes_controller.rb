class LikesController < ApplicationController

  before_action:autenticate_user

  def create
    @like=Like.create(
      user_id:@current_user.id,
      reply_id:params[:reply_id],
      post_id:params[:post_id],
      status:"good1"
    )
    redirect_to homes_url
  end

  def destroy
    @like=Like.find_by user_id:@current_user.id,reply_id:params[:id]
    @like.destroy
    flash[:notice] = "いいねを取り消しました"
    redirect_to homes_url
  end

  # private
  # def like_params
  #   params.require(:like).permit(:post_id,:reply_id)
  # end

end
