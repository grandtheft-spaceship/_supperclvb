class Truck < ActiveRecord::Base
  belongs_to :owner, class_name: 'User'
  has_many :reviews

  validates_presence_of :name
  validates_presence_of :owner_id
end
