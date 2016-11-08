class FoodEventsController < ApplicationController
	def new
	end

	def index
		@food_events = FoodEvent.all
	end

	def create
		@food_event = FoodEvent.new(food_event_params)
  		@food_event.save
  		redirect_to @food_event
	end

	def show
    	@food_event = FoodEvent.find(params[:id])
  	end

	private
  		def food_event_params
    		params.require(:food_event).permit(:title, :description, :meal_type)
  		end
end
