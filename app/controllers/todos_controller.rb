class TodosController < ApplicationController
  
  def new
    @todo = Todo.new
  end
  
  def create
    @todo = Todo.new(params[:todo])
    if @todo.save
      respond_to do |format|
        format.html { redirect_to @todo; flash[:success] = "Todo created." }
        format.js
      end
    else
      flash[:error] = "Something went wrong"
      render :new
    end
  end
  
  def edit
    @project = Project.find(params[:id])
    audit "edit params"
    audit params
    @todo = Todo.find(params[:id])
  end
  
  def update
    audit "update controller params hash"
    audit params
    @project = Project.find(params[:id])
    @todo = Todo.find(params[:id])
    @todo.update_attributes(params[:todo])
    @todo.save
    audit "update controller trigered"
    audit params
    redirect_to project_path(params[:id])
  end
  
  def destroy
    audit "destroy controller triggered"
    audit params
    @todo = Todo.find(params[:id])
    @todo.destroy
    redirect_to project_path(params[:id])
  end
  
  def index
    
  end
  
  def show
    
  end
  
end
# <h1><%= @todo.name %></h1>
#   <%= form_for @todo do |p| %>
#     <%= p.label "Todo Name" %>
#     <%= p.text_field :name %>
#     <%= p.fields_for :tasks, @todo.tasks do |tsk| %>
#     <%= tsk.label "Task name, sucka" %>
#     <%= tsk.text_field :description %>
#     <% end %>
#     <%= p.hidden_field :id, :value => @todo[:project_id]%>
#     <%= p.submit "Submit", class: "btn btn-primary" %>
#   <% end %>
