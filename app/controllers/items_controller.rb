class ItemsController < ApplicationController
  before_filter :find_check

  def new
    @item = @check.items.build
    @items = Item.where(check: @check)
  end

  def create
    @item = @check.items.build(item_params)
    @item.person = @item.person.downcase.capitalize
    @item.name = @item.name.downcase.capitalize

    if @item.save
      redirect_to new_check_item_path
    else
      render 'new'
    end

  end

  def edit
  end

  def update
  end

  private

  def item_params
    params.require(:item).permit(:name, :price, :person)
  end

  def find_check
    @check = Check.find(params[:check_id])
  end

end
