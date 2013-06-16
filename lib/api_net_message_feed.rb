require 'json'
require 'api_net_message'

class ApiNetMessageFeed
  require 'open-uri'
  def execute
    json_data = JSON.parse(retrieve_feed)
    json_data['data'].each do |json_entry|
      message = ApiNetMessage.new(json_entry)
      puts message.username
      puts message.text
    end
  end

  private
  def retrieve_feed
    open('https://alpha-api.app.net/stream/0/posts/stream/global').read
  end
end