class ListsController < ApplicationController

  def create
    List.create!(params[:list])
    redirect_to :back, :flash => { :success =>  "List was successfully created." }
  end

  def edit
    @list = List.find params[:id]
  end

  def update
    list = List.find params[:id]
    if list.update_attributes params[:list]

      redirect_to lists_path, :flash => { :success => "The user was successfully created" }
    else
      redirect_to :back, :flash => { :error => 'There was an error updating your list.' }
    end
  end

  def destroy
    List.destroy params[:id]
    redirect_to :back, :flash => { :success => 'List has been deleted.' }
  end

  def show
    @list = List.find(params[:id])
  end

  def new
    @list = List.new
  end
  
end
