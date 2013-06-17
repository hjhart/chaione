## Setup

    git clone git@github.com:hjhart/chaione.git
    bundle install

## Running the specs

     export RUBY_ENV=test && rspec spec --color

## Running the most active contributors scripts

    ruby lib/most_active_contributors.rb

Note: You may get a 403 unauthorized message – if so:

    export GITHUB_OAUTH_TOKEN=your_github_oauth_token_goes_here && ruby lib/most_active_contributors.rb

## Printing the app.net global messages

    export RUBYLIB=`pwd`/lib                        # to set the ruby library path to this project only
    ruby -r app_net_messages_feed -e 'AppNetMessagesFeed.new.execute'
