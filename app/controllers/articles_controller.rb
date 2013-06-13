class ArticlesController < ApplicationController
  def index
    @item = Item.new
    @items = Item.all
  end
  def create
    Item.create params[:item]
    redirect_to :back
  end
end
