[![Build Status](https://travis-ci.org/TeamLifecycle/lifecycle-ruby.svg?branch=master)](https://travis-ci.org/TeamLifecycle/lifecycle-ruby) [![Coverage Status](https://coveralls.io/repos/TeamLifecycle/lifecycle-ruby/badge.svg?branch=master&service=github)](https://coveralls.io/github/TeamLifecycle/lifecycle-ruby?branch=master)
# Lifecycle-Ruby

Welcome to Lifecycle. If you are unfamiliar with who we are and what we do, check us out at [lifecycle.io](https://lifecycle.io).
## Installation

Add this line to your application's Gemfile:

```ruby
gem 'lifecycle_api'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install lifecycle_api

## Usage
To use, simply create an instance of the client and identify and track away!

```ruby
require 'lifecycle_api/lifecycle'

lifecycle = Lifecycle::Client.new 'YOUR_LIFECYCLE_API_KEY'
```

TO IDENTIFY:
```ruby
lifecycle.identify params #(see example of params)
```

TO TRACK:
```ruby
lifecycle.track 'event_id', 'unique_id'
```


```ruby
#Example of params variable to use with identify call
#NOTICE: .to_json at the end. The api will not be able
#to parse your request without this.
params = {:unique_id => "1234",
          :first_name => "Nathan",
          :last_name => "Mooney",
          :email_address => "someone@getvenn.io",
          :phone_number => "12345678913"
}.to_json
```
Use this gem to interact with your Lifecycle account. Easily identify users and track users with minimal code. If you are looking for packages in a language other than ruby, check out the TeamLifecycle organization for your desired language. It is our hope that by providing this gem, integration and usage of Lifecycle will be quick and easy.

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/lifecycle-ruby.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
