require File.dirname(__FILE__) + '/../test_helper'

class ClientTest < Test::Unit::TestCase
  include Billboard
  
  context "Hitting the Billboard API" do
    setup { @client = Billboard::Client.new('OU812') }
    
    should "find chart data based on chart id" do
      stub_get 'http://api.billboard.com/apisvc/chart/v1/item?id=3064446&format=json&api_key=OU812', 'chart.json'
      chart = @client.chart(3064446)
      chart.description.should == 'Chart'
      chart.chart_items.items.size.should == 10
      chart.chart_items.items.last.artist_name.should == 'Sade'
    end
    
    should "find chart data based on artist name and date range" do
      stub_get 'http://api.billboard.com/apisvc/chart/v1/list?end_date=1975-12-31&format=json&sdate=1975-01-01&artist=Waylon%20Jennings&sort=date%20&edate=1975-12-31&start_date=1975-01-01&api_key=OU812', 'artist_search_with_date_range.json'
      results = @client.search(:artist => 'Waylon Jennings', :start_date => '1975-01-01', :end_date => '1975-12-31', :sort => 'date+')
      results.total_records.should == 927
      results.chart_items.size.should == 50
      results.chart_items.last.song.should == "Sweet Dream Woman"
      results.chart_items.last.weeks_on.should == 13
    end
    
    should "find album charts" do
      stub_get 'http://api.billboard.com/apisvc/chart/v1/list/spec?type=album&api_key=OU812&format=json', 'album_charts.json'
      results = @client.chart_specs(:type => 'album')
      results.total_records.should == 589
      results.total_returned.should == 50
      results.charts.last.name.should == 'Latin Rhythm Albums'
      
    end
    
  end
end