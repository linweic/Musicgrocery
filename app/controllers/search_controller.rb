class SearchController < ApplicationController
  skip_before_filter:authenticate_customer!

  def details
	hash=params[:search]
	@artist_name=hash[:name]
  end
end
