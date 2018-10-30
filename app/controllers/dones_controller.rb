class DonesController < ApplicationController
  before_action :authenticate_user!

  def create
    @task = Task.find(params[:task_id])
    @done = Done.new(task: @task, user: current_user)
    if @done.save
      redirect_to tasks_path, notice: 'Done'
    else
      redirect_to tasks_path, alert: 'Fail'
    end
  end

  def index
    @tasks = current_user.tasks
  end

  def destroy
    @task = Task.find(params[:task_id])
    @done = Done.where(user: current_user, task: @task)
    if @done.first.destroy
      redirect_to tasks_path, notice: 'Done'
    else
      redirect_to tasks_path, alert: 'Fail'
    end
  end
end
