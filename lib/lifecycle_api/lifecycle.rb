require "lifecycle_api/version"
require "lifecycle_api/configuration"
require "lifecycle_api/client"

module Lifecycle
  extend Configuration
  # def identify(api_key)
  #   response = Unirest.post "http://lifecycle.io/v1/identify",
  #                         headers:{ "Content-Type" => "application/json", "lifecycle-api-key" => api_key },
  #                         parameters:@params {|response|
  #     response.code # Status code
  #     response.headers # Response headers
  #     response.body # Parsed body
  #     response.raw_body # Unparsed body
  #   }
  # end
  #
  # def track(api_key, unique_id, event_id)
  #   response = Unirest.post "http://lifecycle.io/v1/track",
  #                         headers:{ "Content-Type" => "application/json", "lifecycle-api-key" => api_key },
  #                         parameters:{ :event_id => event_id :unique_id => unique_id} {|response|
  #     response.code # Status code
  #     response.headers # Response headers
  #     response.body # Parsed body
  #     response.raw_body # Unparsed body
  #   }
  # end
end
