class Pin < ActiveRecord::Base
  attr_accessible :description, :price

  validates :description, presence: true, :length => { :maximum => 100}
  validates :user_id, presence: true
  
  belongs_to :user
end
