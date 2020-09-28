class CrimesController < ApplicationController

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

