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
end
