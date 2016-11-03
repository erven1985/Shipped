class BoatsController < ApplicationController
  
  def index
  	# to do: display all boats 
  	@boats = Boat.all 
  end

  def new
  	# to do: form to create new boats with location
  	@boat = Boat.new
  end

  def create
  	@boat = Boat.new(boat_params)
  	@user = User.find_by_id(current_user.id)
  	p @boat
  	@boat.user = @user

  		if @boat.save
  			redirect_to boats_path
		end
  end

  def edit
  	# to do: make form to assign boats to jobs
  	@boat = Boat.find(params[:id])
  end

  def update
  	@boat = Boat.find(params[:id])

  	@boat.update({
  		name: params[:boat][:name],
  		location: params[:boat][:location],
  		container: params[:boat][:container]
  	})

  	if (@boat)
  		redirect_to url_for(:controller => :boats, :action => :index)
  	else
  		redirect_to url_for(:controller => :boats, :action => :edit)
  	end
  end

  def show
  	# to do: be able to show a single boat and its job or availability
  	@boat = Boat.find(params[:id])
    @job = Job.first

  end

  def destroy
  	# to do: be able to delete a boat from all boats collection
  @boat = Boat.find(params[:id])   
  @boat.destroy
  if @boat 
  redirect_to url_for(:controller => :boats, :action => :index)
  end
end

  private

  def boat_params
  	params.require(:boat).permit(:name, :location, :container, :avatar)
  end

end



