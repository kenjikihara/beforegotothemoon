class AdminController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :http_basic_authenticate
  # before_action :authenticate_admin_user!
  layout 'admin/layouts/application'

  def index
    redirect_to admin_dashboard_path
  end

  private

    def http_basic_authenticate
      return if Rails.env.development?
      authenticate_or_request_with_http_basic('') do |name, password|
        name == ENV['BASIC_AUTH_USER'] && password == ENV['BASIC_AUTH_PASSWORD']
      end
    end
end
