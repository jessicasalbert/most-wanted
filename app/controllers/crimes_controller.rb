class CrimesController < ApplicationController
    skip_before_action :authorized, only: [:new, :create, :index, :show]

    def index
        @crimes = Crime.all
    end

    def show
        @crime = Crime.find(params[:id])
    end

    def destroy
        # @crime.destroy 
        

    end

    
end

