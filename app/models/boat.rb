class Boat < ApplicationRecord

  belongs_to :user

  has_and_belongs_to_many :jobs

  	has_attached_file :avatar,
 	:styles => { :medium => "300x300>", :thumb => "150x150>" },
 	:default_url => "/images/no_image.png"

	validates_attachment_content_type :avatar,
 	:content_type => /\Aimage\/.*\Z/
 	

end
