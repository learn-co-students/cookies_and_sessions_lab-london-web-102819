class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def cart
    session[:cart] ||= []
  end

  def home

  end

  def add_to_cart
    cart << params[:product]
    redirect_to products_path
  end

  
end
