require "lifecycle_api/version"
require "lifecycle_api/configuration"
require "lifecycle_api/client"
require "unirest"

module Lifecycle
  extend Configuration
  class Client
    attr_accessor *Configuration::VALID_CONFIG_KEYS

    def initialize(api_key = :api_key)
      # Merge the config values from the module and those passed
      # to the client.
      merged_options = Lifecycle.options.merge(:api_key => api_key)

      # Copy the merged values to this client and ignore those
      # not part of our configuration
      Configuration::VALID_CONFIG_KEYS.each do |key|
        send("#{key}=", merged_options[key])
      end
    end
    def track(event_id, unique_id)
      # response = Unirest.post "http://lifecycle.io/v1/track",
      response = Unirest.post "http://localhost:3400/v1/track",
                            headers:{ "Content-Type" => "git json", "lifecycle-api-key" => self.api_key },
                            parameters: { :event_id => event_id, :unique_id => unique_id }
      puts "T", response.code # Status code
      response.headers # Response headers
      puts response.body # Parsed body
      response.raw_body # Unparsed body
    end
    def identify(params)
      # response = Unirest.post "http://lifecycle.io/v1/identify",
      response = Unirest.post "http://localhost:3400/v1/identify",
                            headers:{ "Content-Type" => "application/json", "lifecycle-api-key" => self.api_key },
                            parameters: params
      puts "I", response.code # Status code
      response.headers # Response headers
      response.body # Parsed body
      response.raw_body # Unparsed body
      end
  end
end
