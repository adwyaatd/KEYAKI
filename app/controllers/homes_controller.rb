class HomesController < ApplicationController
  
  def top
  end

  def index
    @posts = Post.search(params[:search])
    @category=Category.find_by id:1
  end
end
