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

  describe "testing identify endpoint" do
    context "with default params" do
      it "and valid api-key" do
        lifecycle = Lifecycle::Client.new '0ae6827cfcfce2bff25ca224'
        params = {:unique_id => "1234",
          :first_name => "Nathan",
          :last_name => "Mooney",
          :email_address => "someone@getvenn.io",
          :phone_number => "12345678913"
        }.to_json
        response = lifecycle.identify(@params)
        expect(response.code).to eql(200)
      end

    end

  end
end
