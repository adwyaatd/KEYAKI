class PostsController < ApplicationController
  def new
    @post=Post.new
  end

  def create
    @post=Post.new(
      theme:params[:theme],
      image_name: "default_user.JPG"
    )
    if params[:image]
      @post.image_name="#{params[:theme]}.JPG"
      image = params[:image]
      File.binwrite("/webapp/public/post_images/#{@post.image_name}", image.read)
      File.binwrite("/webapp/app/assets/images/post_images/#{@post.image_name}", image.read)
    end
    if @post.save
      flash[:notice]="スレッドを新規作成しました！"
      redirect_to post_url
    else
      @theme=params[:theme]
      @image_name=params[:image_name]
      render template: "posts/show"
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
    @post=Post.find params[:id]
    @replies=@post.replies
    @reply=Reply.new
  end
end
