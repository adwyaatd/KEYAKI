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
      redirect_to homes_url
    else
      @name=params[:name]
      @email=params[:email]
      @password=params[:password]
      render template: "users/new"
    end
  end

  def show
    @user=User.find_by id:params[:id]
  end

  def login
    @user =User.find_by(email:params[:email])
    if @user && @user.authenticate(params[:password])
      session[:user_id]=@user.id
      flash[:notice]="ログインしました"
      redirect_to homes_url
    else
      render template: "homes/top" 
    end
  end

  def logout
    session[:user_id] = nil
    flash[:notice] = "ログアウトしました"
    redirect_to("/")
  end
end
