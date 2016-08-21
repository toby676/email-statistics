def sample_emails
  Event.create(address: "barney@lostmy.name",
               email_type: "Shipment",
               event_type: "send",
               timestamp: 1432820696)
  Event.create(address: "tom@lostmy.name",
               email_type: "UserConfirmation",
               event_type: "click",
               timestamp: 1432820702)
  Event.create(address: "vitor@lostmy.name",
               email_type: "Shipment",
               event_type: "open",
               timestamp: 1432820704)
end
