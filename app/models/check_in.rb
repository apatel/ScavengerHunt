class CheckIn < ActiveRecord::Base
  attr_accessible :team_id, :location_id
  
  belongs_to :location
  belongs_to :team
end
