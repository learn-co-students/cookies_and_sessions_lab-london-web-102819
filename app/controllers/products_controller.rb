class ProductsController < ApplicationController
  def index
    @carts = cart
  end

  def add

  end

  def create 
    @item = params[:product][:item]
    cart << @item
    redirect_to products_path
  end
end
