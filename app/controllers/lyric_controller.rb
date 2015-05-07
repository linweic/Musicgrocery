class LyricController < ApplicationController
  skip_before_filter:authenticate_customer!
  def info
    @length = params[:length].to_i
    @lyrics = ""
    @track = ""
    (0..@length-1).each do |i|
      temp = params["lyrics#{i}"]
      temp_track = params["track#{i}"]
      if  not temp.nil?
        @lyrics = temp
        @track = temp_track
        break
      end
    end

  end
end