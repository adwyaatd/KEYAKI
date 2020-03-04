class RepliesController < ApplicationController

  before_action:autenticate_user
  before_action:ensure_current_user,only:[:edit,:update,:destroy]

  def new
  end

  def create
    @reply=Reply.new(reply_params)
    @reply.user_id=current_user.id
    if params[:image]
      @reply.image_name="#{@reply.id}.JPG"
      image = params[:image]
      File.binwrite("/webapp/public/reply_images/#{@reply.image_name}", image.read)
      File.binwrite("/webapp/app/assets/images/reply_images/#{@reply.image_name}", image.read)
    end
    if @reply.save
      flash[:notice]="コメントを投稿しました！"
      redirect_back(fallback_location: root_path)
    else
      render template: "posts/show"
    end
  end

  def destroy
    @reply=Reply.find_by id:params[:id]
    @reply.destroy
    flash[:notice] = "コメントを削除しました"
    # @post=Post.find_by id:params[:post_id]
    redirect_to homes_url
  end

  private
  
  def reply_params
    params.require(:reply).permit(:text,:post_id,:image_name)
  end
end
