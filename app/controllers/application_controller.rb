class ApplicationController < ActionController::API
  include ActionController::Cookies

  def require_login
    unless logged_in?
      render json: { error: 'Unauthorized' }, status: :unauthorized
    end
  end

  def logged_in?
    # Add your logic to check if the user is logged in
    # For example, you can check if the user is present in the session or if you're using tokens, check if the token is valid.
    # You can customize this method based on your authentication implementation.
  end
end

