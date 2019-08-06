class TasksController < ApplicationController

  before_action :set_task, only: [:show, :edit, :update, :destroy]

  def index
    @tasks = Task.all
  end

  def show
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(tasks_params)
    @task.save
    redirect_to tasks_path
  end

   def update
    @task.update(tasks_params)

    redirect_to tasks_path
    # Will raise ActiveModel::ForbiddenAttributesError
  end

  def edit
  end

  def destroy
    @task.destroy
    redirect_to tasks_path
  end

private
  def tasks_params

    params.require(:task).permit(:title, :details)
  end

  def set_task
    @task = Task.find(params[:id])
  end

end

