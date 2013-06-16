require 'json'
require 'app_net_message'
require 'open-uri'

class AppNetMessagesFeed
  def execute
    json_data = JSON.parse(retrieve_feed)
    json_data['data'].each do |json_entry|
      message = AppNetMessage.new(json_entry)
      display message.username
      display message.text
    end
  end

  private
  def retrieve_feed
    open('https://alpha-api.app.net/stream/0/posts/stream/global').read
  end

  def display message
    puts message unless ENV['RUBY_ENV'] == 'test'
  end
end