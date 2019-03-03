class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end
  
  def new
  end
  
  def create
    @task = Task.new(content: params[:content])
    if @task.save
      redirect_to("/tasks/index")
    else
      render("tasks/new")
    end
  end
  
  def delete
    task = Task.find_by(id: params[:id])
    task.destroy
    redirect_to("/tasks/index")
  end
  
  def edit
    @task = Task.find_by(id: params[:id])
  end
  
  def update
    @task = Task.find_by(id: params[:id])
    @task.content = params[:content]
    if @task.save
      redirect_to("/tasks/index")
    else
      render("tasks/edit")
    end
  end
    
end
