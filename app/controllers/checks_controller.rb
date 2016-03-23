class ChecksController < ApplicationController

  def new
    @check = Check.new
  end

  def create
    @check = Check.new(check_params)

    if @check.save
      redirect_to new_check_item_path(@check)
    else
      render 'new'
    end
  end

  def show
    @check = Check.find(params[:id])
    @items = Item.where(check: @check)
  end

  private

  def check_params
    params.require(:check).permit(:tax, :total, :tip)
  end

end
