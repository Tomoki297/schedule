class AdminUsersController < ApplicationController

  def show
    @admin_user = AdminUser.find_by(id: params[:id])
  end

  def new
    @admin_user = AdminUser.new
  end

  def create
    @admin_user = AdminUser.new(admin_user_params)
    if @admin_user.save
      session[:admin_user_id] = @admin_user.id
      redirect_to admin_admin_user_path, notice: "ユーザー登録が完了しました"
    else
      render :new
    end
  end

  def edit
    @admin_user = AdminUser.find_by(id: params[:id])
  end

  def update
    @admin_user = AdminUser.find_by(id: params[:id])
    @admin_user.username = params[:username]
    @admin_user.email = params[:email]

    if @adminuser.save
      redirect_to admin_admin_user_path, notice: "ユーザー情報を編集しました"
    else
      render :edit
    end
  end

  def login_form
  end

  def login
    @admin_user = AdminUser.find_by(email: params[:email], encrypted_password: params[:encrypted_password])
    if @admin_users
      session[:admin_user_id] = @admin_user.id
      redirect_to top_path, notice: "ログインしました"
    else
      @error_message = "メールアドレスまたはパスワードが間違っています"

      @email = params[:email]
      render :login_form
    end
  end

  def logout
    session[:admin_user_id] = nil
    redirect_to login_path, notice: "ログアウトしました"
  end

private

  def admin_user_params
    params.require(:admin_user).permit(:username, :email, :password)
  end

end
