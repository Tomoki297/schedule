class HomeController < ApplicationController
  before_action :forbid_login_admin_user, {only: [:top]}

  def top
  end

  def month
  end

end
