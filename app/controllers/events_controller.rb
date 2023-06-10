class EventsController < ApplicationController
  def index
    @events = Event.all
  end

  def create
    @event = Event.new(event_params)
    @event.save
  end

  private

    def event_params
      params.require(:event).permit(:child_id, :guardian_id, :event_type)
    end
end
