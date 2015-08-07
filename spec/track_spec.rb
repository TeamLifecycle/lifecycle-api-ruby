# describe 'testing Lifecycle' do
#
#
#   describe '.track' do
#     Lifecycle::Configuration::VALID_CONFIG_KEYS.each do |key|
#       it "should set the #{key}" do
#         Lifecycle.configure do |config|
#           config.send("#{key}=", key)
#           expect(Lifecycle.send(key)).to eql(key)
#         end
#       end
#     end
#   end
# end
