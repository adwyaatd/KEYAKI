class HomesController < ApplicationController
  def top
    @posts=[theme:"test",image_name:"default.png"]
  end

  def index
    @posts = Post.all
  end
end
