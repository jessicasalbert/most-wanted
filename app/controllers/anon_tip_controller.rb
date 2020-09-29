class AnonTipsController < ApplicationController
    
    def new
        @anon_tip = AnonTip.new
    end

    def create
        @anon_tip = AnonTip.create(anon_tip_params)
        redirect_back(fallback_location: home_path)
    end


    private 

    def anon_tip_params
        params.require[:anon_tip].permit(:crime_id, :tip)
    end 


end