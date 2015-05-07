class SongController < ApplicationController
  skip_before_filter:authenticate_customer!
  def info
    #hash = params[:albuminfo]
    #@album_name = hash[:album]
    #@noOfAlbums=params[:albuminfo][:albumlength]

    #@album_array = params[:albuminfo][:album_array]
    #@artist_name=hash[:artist]

    @artist_name = params[:artist]
    #@album_name = params[:album_name]
    @length = params[:length].to_i
    @album_name = ""
    (0..@length-1).each do |i|
      temp = params["album#{i}"]
      if not temp.nil? then
        @album_name=temp
        break
      end
    end



    url_string = "http://ws.audioscrobbler.com/2.0/?method=album.getinfo&api_key=0965e81cc1cafb121563ee1c75395249&artist=#{@artist_name}&album=#{@album_name}"
    url_string=URI.encode(url_string)
    response=HTTParty.get(url_string)
    @track_array = response["lfm"]["album"]["tracks"]["track"]
    @track_length = @track_array.length
    @playlist = {}
    @lyricslist = {}
    #@youtube_api_key = "AIzaSyDE0Wni7V0irRIBjczx6pKl-DkSlHhmM_A"
    (0..@track_length-1).each do |i|
    	@track_name=response["lfm"]["album"]["tracks"]["track"][i]["name"]
    	youtube_string="https://www.googleapis.com/youtube/v3/search?q=#{@track_name} #{@album_name} #{@artist_name}&part=snippet&key=AIzaSyDE0Wni7V0irRIBjczx6pKl-DkSlHhmM_A&type=video"
    	youtube_string=URI.encode(youtube_string)
      youtube_response=HTTParty.get(youtube_string)
      @videoId=youtube_response["items"][0]["id"]["videoId"]
    	@playlist[@track_name]="https://www.youtube.com/watch?v=#{@videoId}"
      musixmatch_string = "http://api.musixmatch.com/ws/1.1/matcher.lyrics.get?q_track=#{@track_name}&q_artist=#{@artist_name}&apikey=bb055175faca8783ea008a0787280a92&format=XML"
      musixmatch_string=URI.encode(musixmatch_string)
      musixmatch_response=HTTParty.get(musixmatch_string)
      @lyricslist[@track_name]=musixmatch_response["message"]["body"]["lyrics"]["lyrics_body"]
    end
  end

end
