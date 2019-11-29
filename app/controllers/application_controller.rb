class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  # helper_method :cart
  ## if this def cart was put in app/helpers/application_helper.rb, then you'd need the helper_metho :cart 
  ## in order for it to be accessible throughout all child controllers 

  def cart
    session[:cart] ||= []
  end 
end
