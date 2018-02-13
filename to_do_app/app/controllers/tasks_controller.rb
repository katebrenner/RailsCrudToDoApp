class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end
  def show
    @tasks = Task.find(params[:id])
    @priorities = Priority.find(params[:id])
  end
  def new
    @task = Task.new
    @priorities = Priority.all
  end
  def create
    @task = Task.new(name: params[:name], details: params[:details], complete_by: params[:complete_by], priority_id: params[:priority_id])
    if @task.save
      redirect_to taks_path(@task)
    else
      render :new
    end
  end
  def update
  @task = Task.find(params[:id])
    if @task.update_attributes(task_params)
      # redirect_to cat_path(@cat)
      redirect_to tasks_path
    else
      render :edit
    end
  end
  private
  def task_params
  params.require(:task).permit(:name, :details, :complete_by, :priority_id)
end
end
