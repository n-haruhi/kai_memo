class TasksController < ApplicationController

  def index
    @tasks = Task.all
    @task = Task.new
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    @task.user_id = current_user.id
    if @task.save
      redirect_to tasks_path, notice: "You have created task successfully."
    else
      @tasks = Task.all
      render :index
    end
  end

  def show
    @task = Task.find(params[:id])
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    if @task = Task.update(task_params)
      redirect_to tasts_path, notice: "You have updated task successfully."
    else
      render :edit
    end
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to tasks_path, notice: "You have deleted task successfully."
  end


  private

  def task_params
    params.require(:task).permit(:title, :task_image)
  end

end
