class AdminController < ApplicationController
  before_action :authenticate_user!
  before_action :require_user_be_admin_to_see

  private

  def require_user_be_admin_to_see
    unless current_user && current_user.admin?
      redirect_to(root_path, alert: "Not happenin' sorry. You've gotta be an admin to access that page.")
    end
  end
end
