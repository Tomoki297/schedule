class ApplicationController < ActionController::Base
  # before_action :set_current_admin_user

  # def set_current_admin_user
  #   @current_admin_user = AdminUser.find_by(id: session[:admin_user_id])
  # end

  def authenticate_admin_user
    if @current_admin_user == nil
      redirect_to login_path, notice: "ログインが必要です"
    end
  end

  def forbid_login_admin_user
    if @current_admin_user
      redirect_to top_path, notice: "すでにログインしています"
    end
  end

  rescue_from SecurityError do |exception|
    redirect_to top_path, notice: "管理者画面へのアクセス権限がありません"
  end

end
