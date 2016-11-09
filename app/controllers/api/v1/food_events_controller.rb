module Api
	module V1
		class FoodEventsController < ApplicationController 
			respond_to :json

			def index
				respond_with FoodEvent.all
			end
		
			def show
		    	respond_with FoodEvent.find(params[:id])
		  	end

		  	def create
		  		respond_with FoodEvent.create(food_event_params)
		  	end

		  	def update
		  		respond_with FoodEvent.update(params[:id], food_event_params)
		  	end

		  	def destroy
		  		respond_with FoodEvent.destroy(params[:id])
		  	end

			private
		  		def food_event_params
		    		params.require(:food_event).permit(:title, :description, :meal_type)
		  		end
		end
	end
end