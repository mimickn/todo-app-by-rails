class UsersController < ApplicationController
  def new
  end

  def create
    user = User.new(name: params[:name], password: params[:password])
    if user.save
      redirect_to("/tasks/index")
    else
      render("users/new")
    end
  end

  def edit
    @user = User.find_by(id: params[:id])
  end
  
  def update
    user = User.find_by(id: params[:id])
    user.name = params[:name]
    user.password = params[:password]
    if user.save
      redirect_to("/users/#{user.id}/show")
    else
      render("users/edit")
    end
  end

  def show
    @user = User.find_by(id: params[:id])
  end

  def delete
    user = User.find_by(id: params[:id])
    user.destroy
    redirect_to("/")
  end
end
