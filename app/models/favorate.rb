class Favorate < ActiveRecord::Base
  belongs_to :customer
  attr_accessible :artist, :email
end
