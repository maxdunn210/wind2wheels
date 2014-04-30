class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.

  # MD Apr-2014 Turn this off for now because of ajax post
  # protect_from_forgery with: :exception

  rescue_from CanCan::AccessDenied do |exception|
    redirect_to access_denied_path, :alert => exception.message
  end

end
