class Location < ActiveRecord::Base
  # attr_accessible :title, :body
  has_many :clues
  
  validates_presence_of :name
  
  attr_accessible :name
  
  def to_s
    %Q|#{name}|
  end
end
