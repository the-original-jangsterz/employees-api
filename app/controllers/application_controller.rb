class ApplicationController < ActionController::Base
  protect_from_forgery with: :null_session

  before_action :restrict_access

  private

  def restrict_access
    # check if the request has an API key as part of it...
    authenticate_or_request_with_http_token do |api_key, options|
      User.find_by(api_key: api_key, email: request.headers['X-User-Email'])
    end
  end
end
