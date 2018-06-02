class EventPresenter
  attr_reader :event

  delegate Event.parameters to: :event

  def initialize(event)
    @event = event
  end
end