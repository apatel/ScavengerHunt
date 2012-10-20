class Hint < ActiveRecord::Base
  # attr_accessible :title, :body
  belongs_to :clue
  
  validates_presence_of :hint_text
  
  attr_accessible :hint_text, :clue_id
  
  def to_s
    %Q|#{hint_text}|
  end
end
