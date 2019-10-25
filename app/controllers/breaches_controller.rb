class BreachesController < ApplicationController
  def index
  	@breaches = DataBreach.all
  	if @breaches.any?
      render 'index.json.jbuilder', status: :ok
    else
      render json: { message: "There are no breaches." },
        status: :not_found
    end
  end

  def show_breaches_by_state
  	@breaches = DataBreach.find_by(state: params[:state])
  	if @breaches.any?
  		render 'show_breaches_by_state.json.jbuilder', status: :ok
  	else
  		render json: {message: "No records match your search" },
  		status: :not_found
  	end
  end

  def show_breaches_by_year
  	@breaches = DataBreach.where(year: params[:year])
  	if @breaches.any?
  		render 'show_breaches_by_year.json.jbuilder', status: :ok
  	else
  		render json: {message: "No records match your search" },
  		status: :not_found
  	end  
  end
end
