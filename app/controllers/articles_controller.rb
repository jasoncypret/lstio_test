class ArticlesController < ApplicationController
  def index
    @item = Item.new
    @items = Item.all
    
    @list = List.new
    @lists = List.all
  end
end
