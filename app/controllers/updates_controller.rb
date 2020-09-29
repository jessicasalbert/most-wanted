class UpdatesController < ApplicationController

    def index
        @updates = @current_user.updates
    end

    def new
       @update = Update.new
    end

    def create
        @update = @current_user.updates.create(update_params)
        redirect_back(fallback_location: home_path)
    end

    def edit
    end

    def update 
    end

    def destroy
        @update = Update.find(params[:id])
        @update.destroy 
        redirect_back(fallback_location: home_path)
    end

    private 

    def update_params
        params.require(:update).permit(:user_id, :crime_id, :content)
    end
end
