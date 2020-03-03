class LikesController < ApplicationController

  before_action:autenticate_user

  def create
    @like=Like.create(
      user_id:@current_user.id,
      reply_id:params[:id],
      status:"good1"
    )
    redirect_to homes_url
  end

  # private
  # def like_params
  #   params.require(:like).permit(:user_id,:post_id,:reply_id)
  # end

end
