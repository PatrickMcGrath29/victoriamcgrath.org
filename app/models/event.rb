class Event < ApplicationRecord

  def self.parameters
    %i(
      title
      date_time
      location
      description
      short_description
      primary_image
      images
      action_link
      is_featured
    )
  end

  def self.upcoming
    where(["date_time >= ?", DateTime.current]).order("date_time ASC")
  end

  def self.past
    where(["date_time < ?", DateTime.current]).order("date_time DESC")
  end

  def self.featured
    where("is_featured").order("date_time ASC")
  end
end
