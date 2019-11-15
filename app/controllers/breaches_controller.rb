class BreachesController < ApplicationController
    def index
  	@breaches = Breach.all

  	respond_to do |format|
  		format.html
  	end
  end
end
