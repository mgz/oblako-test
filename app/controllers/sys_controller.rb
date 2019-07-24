class SysController < ApplicationController
  def set_admin_email
    Setting.admin_email = params[:email]
  end
end
