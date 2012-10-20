class ClueMap < ActiveRecord::Base
  
  belongs_to :current_location, :class_name => "Location"
  belongs_to :next_location, :class_name => "Location"
  belongs_to :team
  
  attr_accessible :team_id, :current_location_id, :next_location_id
end
