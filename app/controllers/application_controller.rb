class ApplicationController < ActionController::Base
  protect_from_forgery with: :null_session

  before_action :restrict_access

  def restrict_access
    authenticate_or_request_with_http_token do |api_key, options|
      false
    end

  end
end
