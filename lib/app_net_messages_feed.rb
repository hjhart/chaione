require 'json'
require 'app_net_message'

class AppNetMessagesFeed
  require 'open-uri'
  def execute
    json_data = JSON.parse(retrieve_feed)
    json_data['data'].each do |json_entry|
      message = AppNetMessage.new(json_entry)
      puts message.username
      puts message.text
    end
  end

  private
  def retrieve_feed
    open('https://alpha-api.app.net/stream/0/posts/stream/global').read
  end
end