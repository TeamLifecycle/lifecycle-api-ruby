require 'lifecycle_api'

def example
  # initialize
  lifecycle = Lifecycle::Client.new '07fd3326118474520dc18baf'
  # to identify
  params = {:unique_id => "1234",
            :first_name => "Nathan",
            :last_name => "Mooney",
            :email_address => "someone@getvenn.io",
            :phone_number => "12345678913"
  }.to_json

  lifecycle.identify params

  # to track
  lifecycle.track 'event_id', 'unique_id'
end

example
