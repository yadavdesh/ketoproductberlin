class OrdersController < ApplicationController
  before_action :authenticate_user!
  def index
    @orders = Order.all
  end

  def show
    @orders = Order.find(params[:id])
  end

  def new

  end

  def create
  end

  def destroy
  end

  def set_order
      @order = Order.find(params[:id])
  end

end
