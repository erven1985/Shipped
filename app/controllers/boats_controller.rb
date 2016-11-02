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
  	@boat.save
  		if @boat.save
  			redirect_to boats_path(@boat)
		end
  end

  def edit
  	# to do: make form to assign boats to jobs
  end

  def update
  	
  end

  def show
  	# to do: be able to show a single boat and its job or availability
  end

  def delete
  	# to do: be able to delete a boat from all boats collection
  end


  private

  def boat_params
  	params.require(:boat).permit(:name, :location, :container)
  end

end



