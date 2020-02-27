class HomesController < ApplicationController
  
  def top
  end

  def index
    @posts = Post.search(params[:search])
  end
end
