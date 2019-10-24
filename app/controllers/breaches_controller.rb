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

  def show
  end
end
