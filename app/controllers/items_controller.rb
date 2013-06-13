class ItemsController < ApplicationController

  def create
    Item.create!(params[:item])
    redirect_to :back, :flash => { :success =>  "Item was successfully created." }
  end

  def edit
    @item = Item.find params[:id]
  end

  def update
    item = Item.find params[:id]
    if item.update_attributes params[:item]

      redirect_to items_path, :flash => { :success => "The user was successfully created" }
    else
      redirect_to :back, :flash => { :error => 'There was an error updating your item.' }
    end
  end

  def destroy
    Item.destroy params[:id]
    redirect_to :back, :flash => { :success => 'Item has been deleted.' }
  end

  def show
    @item = Item.find(params[:id])
  end

  def new
    @item = Item.new
  end

end

#:error, :info, :alert 
#:flash => { :info => "The user was successfully created" }
# HTTP Verb Path  action  used for
# GET /photos index display a list of all photos
# GET /photos/new new return an HTML form for creating a new photo
# POST  /photos create  create a new photo
# GET /photos/:id show  display a specific photo
# GET /photos/:id/edit  edit  return an HTML form for editing a photo
# PUT /photos/:id update  update a specific photo
# DELETE  /photos/:id destroy delete a specific photo