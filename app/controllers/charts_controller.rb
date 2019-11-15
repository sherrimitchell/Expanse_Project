class ChartsController < ApplicationController
  def by_type_breaches
    render json: Breach.group(:type_of_breach).count
  end

  def by_state_breaches
  	render json: Breach.group(:state).count.top(10)
  end

  def by_victims_breaches
  	render json: Breach.pluck(:individuals_affected, :date_of_breach)
  end
end