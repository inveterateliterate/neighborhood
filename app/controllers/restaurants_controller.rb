class RestaurantsController < ApplicationController

	def index
		@restaurants = Restaurant.all
		@hash = Gmaps4rails.build_markers(@users) do |user, marker|
  marker.lat user.latitude
  marker.lng user.longitude
end
	end

	def show
	end

	def new
		@restaurant = Restaurant.new
	end

	def create	
	@restaurant = Restaurant.create(restaurant_params)
	if @restaurant.valid?
	  @restaurant.save
	  redirect_to restaurants_path
	else
	  @errors = @restaurant.errors	
	  render :new
	end
  end

  def edit
     @restaurant = Restaurant.find(params[:id])
  end
  
  def update
	@restaurant = Restaurant.find(params[:id])
	if @restaurant.update_attributes(restaurant_params)
		if @restaurant.valid?
		@restaurant.save
		redirect_to restaurants_path
		end
	else
		@errors = @restaurant.errors
		render :edit
	end	
  end



def restaurant_params
      params.require(:restaurant).permit(:name, :website, :latitude, :longitude, :address, :category_id, :area_id,)
    end
end
