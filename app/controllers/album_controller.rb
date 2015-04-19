class AlbumController < ApplicationController
  skip_before_filter:authenticate_customer!
  def info
	hash=params[:albuma]
	@name=hash[:album]
	url_string="http://ws.audioscrobbler.com/2.0/?method=artist.gettopalbums&artist=#{@name}&api_key=f6914435956d88747999fee0b0bd8643"
	url_string=URI.encode(url_string)
	response=HTTParty.get(url_string)
	@album_array = response["lfm"]["topalbums"]["album"]
	@album_length = @album_array.length
	@playlist = {}
	#@youtube_api_key = "AIzaSyDE0Wni7V0irRIBjczx6pKl-DkSlHhmM_A"
	(0..@album_length-1).each do |i|
		@album_name=response["lfm"]["topalbums"]["album"][i]["name"]
		youtube_string="https://www.googleapis.com/youtube/v3/search?q=#{@album_name} #{@name}&part=snippet&key=AIzaSyDE0Wni7V0irRIBjczx6pKl-DkSlHhmM_A&type=playlist"
		youtube_string=URI.encode(youtube_string)
    youtube_response=HTTParty.get(youtube_string)
    @playlistId=youtube_response["items"][0]["id"]["playlistId"]
		@playlist[@album_name]="https://www.youtube.com/playlist?list=#{@playlistId}"
	end
  end
end


