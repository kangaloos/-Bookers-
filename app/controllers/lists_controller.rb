class ListsController < ApplicationController
  def new
     @list = List.new
  end
  
  def create
   
    list = List.new(list_params)
    
    list.save
    
    redirect_to '/top'
  end

  def index
  end

  def show
     @books = book.find(params[:id])  
  end

  def edit
  end
  
  def books
  end
  
   private
  # ストロングパラメータ
  def list_params
    params.require(:list).permit(:title, :body)
  end
end
