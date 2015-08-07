describe 'configuration' do

  after do
    Lifecycle.reset
  end

  describe '.configure' do
    Lifecycle::Configuration::VALID_CONFIG_KEYS.each do |key|
      it "should set the #{key}" do
        Lifecycle.configure do |config|
          config.send("#{key}=", key)
          expect(Lifecycle.send(key)).to eql(key)
        end
      end
    end
  end

  describe '.api_key' do
    it 'should return default key' do
      expect(Lifecycle.api_key).to eql(Lifecycle::Configuration::DEFAULT_API_KEY)
    end
  end

  describe '.format' do
    it 'should return default format' do
      expect(Lifecycle.format).to eql(Lifecycle::Configuration::DEFAULT_FORMAT)
    end
  end

  describe '.user_agent' do
    it 'should return default user agent' do
      expect(Lifecycle.user_agent).to eql(Lifecycle::Configuration::DEFAULT_USER_AGENT)
    end
  end

  describe '.method' do
    it 'should return default http method' do
      expect(Lifecycle.method).to eql(Lifecycle::Configuration::DEFAULT_METHOD)
    end
  end

end

#
# describe Hello do
#   context "first test" do
#     it "is a test" do
#       @hello = Hello.new
#       @hello.hello
#     end
#
#   end
#
# end
#
# describe "testing tracking endpoint" do
#   context "with default params" do
#     it "and valid api-key" do
#       Lifecycle.api_key = 56519ba0c97ff5e67c6e9d4f
#       @params = {:unique_id => "1234",
#         :first_name => "Nathan",
#         :last_name => "Mooney",
#         :email_address => "someone@getvenn.io",
#         :phone_number => "12345678913",
#         :apns_token => "",
#         :gcm_token => ""
#       }
#       Lifecycle.identify(@params)
#     end
#
#   end
#
# end
