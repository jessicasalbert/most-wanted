class CrimesController < ApplicationController
    skip_before_action :authorized, only: [:index, :show]

    def index
        @crimes = Crime.all
    end

    def show
        @crime = Crime.find(params[:id])
        @update = Update.new
    end

    def new 
        @crime = Crime.new
    end

    def create
        @crime = Crime.create(crime_params)

        if @crime.valid?
            redirect_to crime_path(@crime)
        else
            flash[:message] = @crime.errors.full_messages
            redirect_to new_crime_path
        end
    end

    def edit 
        @crime = Crime.find(params[:id])
    end

    def update
        @crime = Crime.find(params[:id])
        @crime.update(crime_params)
        redirect_to crime_path(@crime)
    end

    def destroy
        # @crime.destroy 
    end



    private 

    def crime_params 
        params.require(:crime).permit!
    end

    
end

