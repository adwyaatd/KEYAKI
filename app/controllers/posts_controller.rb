class PostsController < ApplicationController

  before_action:autenticate_user
  # before_action:ensure_current_user,only:[:destroy]

  def new
    @post=Post.new
  end

  def create
    @post=Post.new(post_params)
    @post.user_id = current_user.id
    @post.image_name="#{current_user.id}.JPG"
    if @post.save
      flash[:notice]="スレッドを新規作成しました！"
      redirect_to homes_url
    else
      @theme=params[:theme]
      @image_name=params[:image_name]
      flash[:notice]="入力内容に不備・未記入の項目があります"
      redirect_to new_post_url
    end
  end

  def index
    @posts=Post.all
  end

  def destroy
    @post=Post.find_by id:params[:id]
    @post.destroy
    flash[:notice] = "スレッドを削除しました"
    redirect_to homes_url
  end

  def show
    @post=Post.find_by id:params[:id]
    @replies=@post.replies
    @reply=Reply.new
    @categories=@post.categories
  end

  private
  def post_params
    params.require(:post).permit(:theme,:text,:user_id,:image,category_ids: [])
  end
end
