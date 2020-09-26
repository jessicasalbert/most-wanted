class CitiesController < ApplicationController

    def index
        @cities = City.all.ordered
    end

    def show
        @city = City.find(params[:id])
    end
end