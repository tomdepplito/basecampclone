class TasksController < ApplicationController

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(params[:task])
  end

  def edit
    @task = Task.new(params[:task])
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
  

