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
        @api_key = 'ak'
      end

      it 'should override module configuration' do
        api = Lifecycle::Client.new(@api_key)
        expect(api.api_key).to eql(@api_key)
      end

    end

  end

end
