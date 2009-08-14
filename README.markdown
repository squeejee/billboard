# billboard

Ruby wrapper for the Billboard charts API. Great for cheating at trivia games.

## Installation

    sudo gem install billboard
    
## Usage
    
    api_key = 'OU812' # get yours at http://developer.billboard.com/apps/register
    client = Billboard::Client.new(api_key)
    
### Find a chart by type

    charts = client.chart_specs(:type => 'Videos').charts
    
### Find items on a chart

    items = client.search(:id => charts.last.id).chart_items
    items.last.song = "Lost: The Complete Third Season"
    items.last.weeks_on = 21

## Note on Patches/Pull Requests
 
* Fork the project.
* Make your feature addition or bug fix.
* Add tests for it. This is important so I don't break it in a
  future version unintentionally.
* Commit, do not mess with rakefile, version, or history.
  (if you want to have your own version, that is fine but
   bump version in a commit by itself I can ignore when I pull)
* Send me a pull request. Bonus points for topic branches.

## Copyright

Copyright (c) 2009 Wynn Netherland. See LICENSE for details.
