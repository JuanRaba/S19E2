class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end
  def show
    @task = Task.find(params[:id])
    @users = @task.users
    @fast_dones = @task.dones.order(:created_at).limit(5)
  end
end
