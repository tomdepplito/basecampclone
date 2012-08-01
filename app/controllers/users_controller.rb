class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def index
  end

  def update
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      flash[:success] = "User created"
      redirect_to user_projects_path
      audit params
    else
      flash[:error] = "Something went wrong"
      render :new
    end
  end

  def edit
  end

  def destroy
  end

  def show
  end
end
