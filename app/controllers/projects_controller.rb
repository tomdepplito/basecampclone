class ProjectsController < ApplicationController
  def index
    if user_signed_in?
      @private_projects = Project.find_all_by_user_id(current_user.id)
    end
      @public_projects = Project.find_all_by_public(true)
  end
  
  def new
    @project = Project.new
  end
  
  def create
    @project = Project.new(params[:project])
    @project.user_id = current_user.id
    if @project.save
      flash[:success] = "You created a new project"
      redirect_to root_path
    else
      flash[:error] = "Something went wrong"
      render :new
    end
  end
end
