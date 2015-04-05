class AlbumController < ApplicationController
  def info
	hash=params[:albuma]
	@name=hash[:album]
	url_string="http://ws.audioscrobbler.com/2.0/?method=artist.gettopalbums&artist=#{@name}&api_key=f6914435956d88747999fee0b0bd8643"
	url_string=URI.encode(url_string)
	response=HTTParty.get(url_string)
	@album_array = response["lfm"]["topalbums"]["album"]
	#@album_name=response["lfm"]["topalbums"]["album"][0]["name"]
  end
end


