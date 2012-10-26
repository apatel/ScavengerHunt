class Location < ActiveRecord::Base
  # attr_accessible :title, :body
  has_many :clues
  has_many :check_ins
  
  validates_presence_of :name
  
  attr_accessible :name
  
  def to_s
    %Q|#{name}|
  end
end
