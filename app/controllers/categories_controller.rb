class CategoriesController < ApplicationController

  before_action:autenticate_user
  before_action:ensure_current_user,only:[:destroy]

  def new
    @category=Category.new
  end

  def create
    @category=Category.create(category_params)
    redirect_to homes_url
  end

  private
  def category_params
    params.require(:category).permit(:name)
  end
end
