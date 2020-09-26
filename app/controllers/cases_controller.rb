class CasesController < ApplicationController

    def index
        @cases = Case.all
    end

    def show
        @case = Case.find_by(params[:id])
    end
end