class PositionsController < ApplicationController
  include CurrentCart

  before_action :set_cart, only: [:create]

  def index
    @positions = Position.all
  end

  def show
    @position = resource
  end

  def new
    @position = Position.new
  end

  def edit
    @position = resource
  end

  def create
    item = Item.find(params[:item_id])
    @position = @cart.add_item(item)

    if @position.save
      flash[:notice] = "Item has been added to the cart"
      redirect_to @position.cart
    else
      render :new
    end
  end

  def update
    @position = resource

    if @position.update(permitted_params)
      flash[:notice] = "successfully updated"
      redirect_to @position
    else
      render_edit
    end
  end

  def destroy
    @position = resource

    @cart = Cart.find(session[:cart_id])

    if @position.destroy
      flash[:notice] = "successfully deleted"
      redirect_to cart_path(@cart)
    else
      flash[:notice] = "cannot be deleted"
    end
  end

  private

    def resource
      Position.find_by(id: params[:id])
    end

    def permitted_params
      params.require(:position).permit(:item_id)
    end
end
