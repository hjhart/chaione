require 'rspec'
require 'api_net_message'

describe ApiNetMessage do
  let(:json_snippet) {
    {
        'text' => "whatever you want it to be",
        'user' => {
          'username' => '@hjhart'
        },
        'reply_to' => '6800534',
        'thread_id' => '6798707',
        'id' => '6800534'
    }
  }

  subject { ApiNetMessage.new(json_snippet) }

  it "has message and username as attributes" do
    subject.username.should eq "@hjhart"
    subject.text.should eq "whatever you want it to be"
  end
end