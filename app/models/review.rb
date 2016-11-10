class Review < ActiveRecord::Base
  belongs_to :truck
  belongs_to :patron, class_name: 'User'

  validates_presence_of :patron_id
  validates_presence_of :truck_id
  validates_presence_of :rating

end
