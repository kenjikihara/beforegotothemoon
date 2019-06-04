class EventsController < ApplicationController
  def index
    @events = Event.order(created_at: :desc).page(params[:page]).per(1)
  end

  def create
    @event = Event.build(event_params)
  end

  private

    def event_params
      params.require(:event).permit(:id, :title, :content, :note)
    end
end
