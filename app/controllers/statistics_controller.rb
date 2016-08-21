class StatisticsController < ApplicationController

  def index
    @send_count = Event.where(event_type: "send").count
    @open_count = Event.where(event_type: "open").count
    @click_count = Event.where(event_type: "click").count
  end

end
