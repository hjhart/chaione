require 'rspec'
require 'vcr'
require 'vcr_config'
require 'webmock/rspec'
require 'app_net_messages_feed'

describe AppNetMessagesFeed, vcr: true do
  context "#execute" do
    it 'retrieves the feed' do
      subject.execute
      WebMock.should have_requested(:get, 'https://alpha-api.app.net/stream/0/posts/stream/global')
    end

    it 'instantiates all messages returned from the API as ApiNetMessages' do
      api_net_message = double(text: 'whaaaat? this is crazy text.', username: 'hjhart')
      AppNetMessage.should_receive(:new).exactly(20).times.and_return(api_net_message)
      subject.execute
    end
  end
end
