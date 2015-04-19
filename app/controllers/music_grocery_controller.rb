class MusicGroceryController < ApplicationController

  skip_before_filter:authenticate_customer!


  def index
  end
end
