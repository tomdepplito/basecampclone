class TodosController < ApplicationController
  
  def new
    @todo = Todo.new
  end
  
  def create
    @todo = Todo.new(params[:todo])
  end
  
  def edit
    
  end
  
  def update
    
  end
  
  def destroy
    
  end
  
  def index
    
  end
  
  def show
    
  end
  
end
