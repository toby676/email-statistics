class StatisticsController < ApplicationController

  def index
    @send_count = Event.where(event_type: "send").count
    @open_count = Event.where(event_type: "open").count
    @click_count = Event.where(event_type: "click").count

    @total_by_type = Hash.new(0)
    @opened_by_type = Hash.new(0)
    @clicked_by_type = Hash.new(0)

    Event.all.each do |email|

      @total_by_type[email.email_type] += 1

      if email.event_type == 'open'
        @opened_by_type[email.email_type] += 1
      elsif email.event_type == 'click'
        @clicked_by_type[email.email_type] += 1
      end

    end



  end

end
