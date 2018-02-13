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
    @task = Task.new(task_params)
    if @task.save!
      redirect_to task_path(@task)
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
  def destroy
   @task = Task.find(params[:id])
   @task.destroy
   redirect_to tasks_path
 end
  private
  def task_params
  params.require(:task).permit(:name, :details, :complete_by, :priority_id)
end
end
