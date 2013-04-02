class Pin < ActiveRecord::Base
  attr_accessible :description, :price, :image

  validates :description, presence: true, :length => { :maximum => 100}
  validates :user_id, presence: true
  validates :price, presence: true, :numericality => { :only_integer => true }
	validates_attachment :image, presence: true,
											content_type: { content_type: ['image/jpeg', 'image/jpg', 'image/png', 'image/gif']},
											size: { less_than: 5.megabytes}
  
  belongs_to :user
  has_attached_file :image, :styles => { :original => '5000x5000>', :medium => "300x300>", :thumb => "100x100>" },
  									:convert_options => { :all => '-auto-orient' }
end
