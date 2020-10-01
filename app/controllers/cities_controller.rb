class CitiesController < ApplicationController
    skip_before_action :authorized, only: [:index, :show]


    def index
        @cities = City.all.ordered
    end

    def create
        @cities = City.ordered_by_crimes
        render :index 
    end

    def show
        @city = City.find(params[:id])
        # @ordered_cities = City.all.ordered
        # @crimes_ordered_city = @ordered_cities
        @ordered_crimes = @city.crimes.order(created_at: :desc)
        
    end
end