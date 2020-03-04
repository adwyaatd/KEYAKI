class HomesController < ApplicationController
  
  def top
  end

  def index
    @posts=Post.all
  end

  def search
    @post_or_reply = params[:option]
    if @post_or_reply == "1"
      @posts=Post.search(params[:search],@post_or_reply)
    else
      @replies=Reply.search(params[:search],@post_or_reply)
      
    end
  end
end
