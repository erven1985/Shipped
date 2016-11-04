class Job < ApplicationRecord

has_and_belongs_to_many :boats
belongs_to :user

end
