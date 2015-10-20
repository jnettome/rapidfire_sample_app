class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def current_user
    @current_user = User.first_or_create!(email: 'john@doe.com', name: 'John')
  end

  def can_administer?
    true
  end
end
