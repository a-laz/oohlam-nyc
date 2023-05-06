class HomeController < ApplicationController
    def index
        @event = Event.all.last
    end

    def create
        event = Event.create!(event_params)
        redirect_to root_path
    end

    private

    def event_params
        params.require(:event).permit(:text)
    end
end