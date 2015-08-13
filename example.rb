require './lib/lifecycle_api/lifecycle'

def example
  # initialize
  lifecycle = Lifecycle::Client.new '0ae6827cfcfce2bff25ca224'
  # to identify
  params = {:unique_id => "1234",
            :first_name => "Nathan",
            :last_name => "Mooney",
            :email_address => "someone@getvenn.io",
            :phone_number => "12345678913"
  }.to_json

  response = lifecycle.identify(params)
  puts response.code

  # to track
  response = lifecycle.track('test-event', '5')
  puts response.code
end

example
