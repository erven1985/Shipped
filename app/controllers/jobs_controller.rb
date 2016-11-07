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
 @boat = Boat.find_by(name: params[:selected])
 @user = User.find_by_id(current_user.id)
 @job = Job.new(job_params)
 @job.user = @user
 @job.save
 @boat.jobs << @job
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
    
  


  if Job.find(params[:id])
    @job = Job.find(params[:id])

# @job = @j.select {|x| x.id == 1}
   @job_boat = @job.boats
    puts @job
    @boat = Boat.where(user_id: current_user.id)
   
 else
  redirect_to '/jobs'
end
  end

  def destroy
    @job = Job.find(params[:id])
    @job.destroy
    redirect_to '/jobs'
  end


def check
@origin = params[:origin]
   
@boats = Boat.where(location: @origin)
respond_to do |format|
    format.html
    format.json {render json: @boats}
  end

end


private

def job_params
  	params.require(:job).permit(:name, :description, :origin, :destination, :container, :price)
  end

end
