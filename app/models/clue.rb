class Clue < ActiveRecord::Base
  # attr_accessible :title, :body
  belongs_to :location
  has_many :hints
  
  validates_presence_of :clue_text
  
  attr_accessible :clue_text, :location_id
  
  def to_s
    %Q|#{clue_text}|
  end
end
