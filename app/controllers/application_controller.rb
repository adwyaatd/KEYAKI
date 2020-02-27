class ApplicationController < ActionController::Base

  before_action:current_user

  def current_user
      @current_user=User.find_by(id:session[:user_id])
  end
  

  def ensure_current_user
    if @current_user.id != params[:id].to_i
      flash[:notice]="他のアカウントでの操作はできません"
      redirect_to homes_url(@current_user)
    end
  end

  def autenticate_user
    if current_user==nil
      flash[:notice]="ログインしてください"
      redirect_to login_form_url
    end
  end

  def forbid_login_user
    if @current_user
      flash[:notice]="すでにログイン中です"
      redirect_to homes_url(@current_user)
    end
  end
end
