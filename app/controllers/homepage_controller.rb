class HomepageController < ApplicationController
  def index
    @featured_project = Event.featured.first
  end
end
