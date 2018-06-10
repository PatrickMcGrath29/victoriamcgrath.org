class EventPresenter
  attr_reader :event

  delegate *Event.parameters, to: :event

  def initialize(event)
    @event = event
  end

  def path
    @event.id
  end

  def date_day_of_week
    date_time.strftime("%A %B %e, %Y")
  end
end
