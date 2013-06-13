class ItemsController < ApplicationController

  def create
    Item.create params[:item]
    redirect_to :back
  end

  def edit
    @item = Item.find params[:id]
  end

  def update
    item = Item.find params[:id]
    if item.update_attributes params[:item]
      redirect_to items_path, :notice => 'Your item has successfully been updated.'
    else
      redirect_to :back, :notice => 'There was an error updating your item.'
    end
  end

  def destroy
    Item.destroy params[:id]
    redirect_to :back, :notice => 'Item has been deleted.'
  end

end
