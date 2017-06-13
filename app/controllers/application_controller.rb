class ApplicationController < ActionController::Base
  protect_from_forgery with: :null_session

  before_action :restrict_access
  # before_action :restrict_access, only: [:new, :edit]

  def restrict_access
    authenticate_or_request_with_http_token do |api_key, _|
      User.find_by(api_key: api_key, email: request.headers['X-User-Email'])
    end
  end
end
