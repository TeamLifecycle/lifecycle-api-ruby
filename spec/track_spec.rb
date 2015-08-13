describe 'testing Lifecycle' do


  describe '.track' do
    Lifecycle::Configuration::VALID_CONFIG_KEYS.each do |key|
      it "should set the #{key}" do
        Lifecycle.configure do |config|
          config.send("#{key}=", key)
          expect(Lifecycle.send(key)).to eql(key)
        end
      end
    end
  end
  describe "testing track endpoint" do
    context "with default params" do
      it "and valid api-key" do
        lifecycle = Lifecycle::Client.new '0ae6827cfcfce2bff25ca224'
        response = lifecycle.track("event", "test")
        expect(response.code).to eql(200)
      end
    end
  end
end
