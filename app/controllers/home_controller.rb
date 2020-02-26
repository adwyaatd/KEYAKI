class HomeController < ApplicationController
  def top
    @posts=[theme:"test",image_name:"default.png"]
  end
end
