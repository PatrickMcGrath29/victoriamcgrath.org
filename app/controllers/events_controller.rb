class EventsController < ApplicationController
  before_action :authenticate_as_admin, except: %w{index show}

  def index
    @upcoming_events = Event.upcoming.map{ |event| EventPresenter.new(event) }
    @past_events = Event.past.map{ |event| EventPresenter.new(event) }
  end

  def show
    @event = Event.find(params[:id])
  rescue
    redirect_to events_path
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    puts @event
    if @event.save
      redirect_to events_path
    else
      render :new
    end
  end

  def edit
    @event = Event.find(params[:id])
  end

  def update
    @event = Event.find(params[:id])
    if @event && @event.update(event_params)
      redirect_to event_path(@event)
    else
      render :edit
    end
  end

  def destroy
    @event = Event.find(params[:id])
    if @event.delete
      redirect_to events_path
    else
      render :edit
    end
  end

  private

  def event_params
    params.require(:event).permit(Event.parameters)
  end
end
