class ItemsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]

  def index
    @items = Item.all.order("created_at desc")
  end

  def show
    @item = resource
  end

  def new
    @item = current_user.items.build
  end

  def edit
    @item = resource
  end

  def create
    @item = current_user.items.build(permitted_params)

    if @item.save
      flash[:notice] = "successfully created"
      redirect_to @item
    else
      render :new
    end
  end

  def update
    @item = resource

    if @item.update(permitted_params)
      flash[:notice] = "successfully updated"
      redirect_to @item
    else
      render :edit
    end
  end

  def destroy
    @item = resource

    if @item.destroy
      flash[:notice] = "successfully deleted"
    else
      flash[:notice] = "cannot be deleted"
    end

    redirect_to items_path
  end

  private

    def resource
      Item.find_by(id: params[:id])
    end

    def permitted_params
      params.require(:item).permit(:title, :description, :price, :brand, :color, :condition, :image)
    end
end
