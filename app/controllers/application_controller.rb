class ApplicationController < ActionController::Base
  skip_before_action :verify_authenticity_token

  before_action :authorize!

  def authorize!
    render json: { success: false, message: 'Unauthorized' }, status: 403 unless current_user
  end

  def current_user
    @current_user ||= User.find_by(auth_token: params[:auth_token])
  end
end
