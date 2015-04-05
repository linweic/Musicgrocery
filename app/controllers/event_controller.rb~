class EventController < ApplicationController
  def info
	hash=params[:evente]
	@name=hash[:event]
	url_string="http://ws.audioscrobbler.com/2.0/?method=artist.getpastevents&artist=#{@name}&api_key=f6914435956d88747999fee0b0bd8643"
	url_string=URI.encode(url_string)
	response=HTTParty.get(url_string)
	@event_array = response["lfm"]["events"]["event"]
	#@event_title=response["lfm"]["events"]["event"][0]["title"]
	#@event_url = response["lfm"]["events"]["event"][0]["venue"]["url"]
  end
end
