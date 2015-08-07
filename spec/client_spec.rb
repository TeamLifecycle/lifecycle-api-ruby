describe Lifecycle::Client do

  before do
    @keys = Lifecycle::Configuration::VALID_CONFIG_KEYS
  end

  describe 'with module configuration' do
    before do
      Lifecycle.configure do |config|
        @keys.each do |key|
          config.send("#{key}=", key)
        end
      end
    end

    after do
      Lifecycle.reset
    end

    it "should inherit module configuration" do
      api = Lifecycle::Client.new
      @keys.each do |key|
        expect(api.send(key)).to eql(key)
      end
    end

    describe 'with class configuration' do
      before do
        @config = {
          :api_key    => 'ak',
          :format     => 'of',
          :endpoint   => 'ep',
          :user_agent => 'ua',
          :method     => 'hm',
        }
      end

      it 'should override module configuration' do
        api = Lifecycle::Client.new(@config)
        @keys.each do |key|
          expect(api.send(key)).to eql(@config[key])
        end
      end

      it 'should override module configuration after' do
        api = Lifecycle::Client.new

        @config.each do |key, value|
          api.send("#{key}=", value)
        end

        @keys.each do |key|
          expect(api.send("#{key}")).to eql(@config[key])
        end
      end

    end

  end

end
