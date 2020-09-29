class UpdatesController < ApplicationController

    def index
        @updates = @current_user.updates
    end

    def new
    end

    def create
    end

    def edit
    end

    def update 
    end

    def delete

    end
end
