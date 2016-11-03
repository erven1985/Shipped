class JobsController < ApplicationController


def index
   # to do: display all jobs 
  @jobs = Job.all
  @user = User.find(current_user.id)
   params[:id] = current_user.id 
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
           redirect_to_jobs_path(@job)
       end
 end

 def edit
   @user = User.find_by_id(current_user.id)
  end

  def update
   @user = User.find_by_id(current_user.id)
    @job = Job.update(job_params)
    @job.user = @user
    @job.save
       if @job.save 
           redirect_to_jobs_path(@job)
       end 
  end

  def show
   # to do: be able to show a single boat and its job or availability
 end

 def destroy
 @job = job.find(params[:id])
  @job.destroy
    redirect_to jobs_path
  end


  private

  def boat_params
   params.require(:job).permit(:name, :description, :origin, :destination, :container, :price)
  end
end