# who were the most active contributors to Rails by month for the past 6 months. Should display top 3 for each months.
require 'octokit'
require 'time'

octokit = Octokit.new(auto_traversal: true, oauth_token: ENV['GITHUB_OAUTH_TOKEN'])

one_month = 60*60*24*31
top_committers = []

(1..6).each do |i|
  since = (Time.now - (one_month * i)).iso8601
  date_until = (Time.now - (one_month * (i - 1))).iso8601

  puts "Getting commits from #{since} until #{date_until}"
  commits = octokit.commits("rails/rails", "master", since: since, until: date_until)

  committers = Hash.new(0)
  commits.each do |commit|
    committers[commit.author.login] += 1 if(commit.author)
  end

  top_three_committers_for_month = committers.sort_by {|_, value| -value}.take(3)
  top_committers << top_three_committers_for_month
end

p top_committers
# produces:
# [[["tenderlove", 65], ["rafaelfranca", 43], ["carlosantoniodasilva", 19]], [["rafaelfranca", 78], ["tenderlove", 70], ["carlosantoniodasilva", 23]], [["rafaelfranca", 101], ["carlosantoniodasilva", 83], ["tenderlove", 39]], [["rafaelfranca", 78], ["carlosantoniodasilva", 69], ["senny", 52]], [["carlosantoniodasilva", 64], ["rafaelfranca", 46], ["amatsuda", 44]], [["rafaelfranca", 70], ["carlosantoniodasilva", 50], ["amatsuda", 33]]]