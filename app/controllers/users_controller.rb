class UsersController < ApplicationController
  def new
    @user=User.new
  end

  def create
    @user= User.new(
      name: params[:name],
      email: params[:email],
      password: params[:password],
      image_name: "#{params[:name]}.JPG"
    )

    if @user.save
      session[:user_id]=@user.id
      flash[:notice]="ユーザー登録完了です"
      redirect_to("/home/home")
    else
      @name=params[:name]
      @email = params[:email]
      @password = params[:password]
      render("home/top")
    end
  end

  def login
    @user =User.find_by(email:params[:email])
    if @user && @user.authenticate(params[:password])
      session[:user_id]=@user.id
      flash[:notice]="ログインしました"
      redirect_to("/home/#{@user.id}")
    else
      render("home/top")
    end
  end
end
