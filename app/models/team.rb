class Team < ActiveRecord::Base
  has_many :clue_maps
  has_many :check_ins
  
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :login, :email, :password, :password_confirmation, :remember_me
  # attr_accessible :title, :body
  
  validates_uniqueness_of :login, :email
  
  def to_s
    %Q|#{login}|
  end
end
