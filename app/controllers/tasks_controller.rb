class TasksController < ApplicationController

  before_action :set_tasks, only: [:show, :edit, :update, :destroy]

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
  end

  def edit
    @task.save
  end

  def update
    @task.update(tasks_params)
  end

  def destroy
    @task.destroy
    redirect_to tasks_path
  end

  private

  def tasks_params
    params.require(:task).permit(:title, :details, :completed)
  end

  def set_tasks
    @task = Task.find(params[:id])
  end

end
