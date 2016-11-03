class JobsController < ApplicationController

  def index
     # to do: display all jobs 
    @jobs = Job.all
    @user = User.find(current_user.id)
    @job = @user.jobs
    # if @job != nil
    #   # @job_current = Job.find(params[:job_id])
    # end
    @jobs = Job.where(user_id: current_user.id)
  end

  def new
    @job = Job.new
  end

  def create
    @user = User.find_by_id(current_user.id)
    @job = Job.new(job_params)
    @job.user = @user
    @job.save
    if @job.save
      redirect_to '/jobs'
    end
  end

  def edit
    @job = Job.find(params[:id])
  end

  def update
    @user = User.find_by_id(current_user.id)
    @job = Job.find(params[:id]).update(job_params)
    redirect_to url_for(:controller => :jobs, :action => :index)
  end

  def show
    # to do: be able to show a single boat and its job or availability
    @job = Job.find_by(name: params[:name])
    puts @job
  end

  def destroy
    @job = Job.find(params[:id])
    @job.destroy
    redirect_to '/jobs'
  end

  private

  def job_params
  	params.require(:job).permit(:name, :description, :origin, :destination, :container, :price)
  end
  
end