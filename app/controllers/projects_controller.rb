class ProjectsController < ApplicationController
  def index
    @project = Project.new
    if user_signed_in?
      @private_projects = Project.find_all_by_user_id(current_user.id)
    end
      @public_projects = Project.find_all_by_public(true)
  end
  
  def new
   
    @project = Project.new
    @todo = Todo.new
    3.times { @project.todos.build } 
    @todo.tasks.build
  end
  
  def create
    @project = Project.new(params[:project])
    @project.user_id = current_user.id
    if @project.save
      respond_to do |format|
        format.html { redirect_to @project; flash[:success] = "Project created." }
        format.js
      end
    else
      flash[:error] = "Something went wrong"
      render :new
    end
  end
  
  def show
     @project = Project.find(params[:id])
     @todo = Todo.new
     @task = Task.new
  end
  
  def update
    @project = Project.find(params[:id])
    if @project.todo.update_attributes(params[:project])
      flash[:success] = "Successful Edit"
      redirect_to project_path
    else
      flash[:error] = "Something went wrong"
      render :new
    end
  end
end
