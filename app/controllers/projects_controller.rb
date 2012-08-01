class ProjectsController < ApplicationController
  def index
    
  end
  def new
    @project = Project.new
  end
  
  def create
    @project = Project.new(params[:project])
    audit params
    if @project.save
      flash[:success] = "You created a new project"
      redirect_to user_projects_path
    else
      flash[:error] = "Something went wrong"
      render :new
    end
  end
end
