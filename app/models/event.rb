class Event < ApplicationRecord
  def self.upcoming
    where(["date_time >= ?", DateTime.current]).order("date_time ASC")
  end

  def self.past
    where(["date_time < ?", DateTime.current]).order("date_time DESC")
  end
end
