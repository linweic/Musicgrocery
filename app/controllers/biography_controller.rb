class BiographyController < ApplicationController

  skip_before_filter:authenticate_customer!
  
  def info
	hash=params[:biographyb]
	@name=hash[:biography]
	url_string="http://ws.audioscrobbler.com/2.0/?method=artist.getinfo&artist=#{@name}&api_key=f6914435956d88747999fee0b0bd8643"
	url_string=URI.encode(url_string)
	response=HTTParty.get(url_string)
	@artist_name=response["lfm"]["artist"]["name"]
	@img_url= response["lfm"]["artist"]["image"][2]["__content__"]
	@summary=response["lfm"]["artist"]["bio"]["summary"]
  end
end
