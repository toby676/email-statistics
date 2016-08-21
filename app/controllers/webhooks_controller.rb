class WebhooksController < ApplicationController
  def create(data = JSON.parse(request.body.read))
    Event.create(address: data["Address"],
    email_type: data["EmailType"],
    event_type: data["Event"],
    timestamp: data["Timestamp"])
    head :ok
  end
end
