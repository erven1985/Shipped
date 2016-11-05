class WelcomeController < ApplicationController
  def index
  	@user = current_user

  end

  def show
  	@user = current_user

  end

  def edit
  	@user = current_user
  	params[:id] = current_user.id
  end

end
