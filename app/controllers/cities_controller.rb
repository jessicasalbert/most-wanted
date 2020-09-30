class CitiesController < ApplicationController
    skip_before_action :authorized, only: [:new, :create, :index, :show]


    def index
        @cities = City.all.ordered
    end

    def show
        @city = City.find(params[:id])
    end
end