class Job < ApplicationRecord

has_and_belongs_to_many :boats
belongs_to :user

geocoded_by :destination
 	after_validation :geocode

end
