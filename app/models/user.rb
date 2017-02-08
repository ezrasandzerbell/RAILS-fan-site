class User < ActiveRecord::Base
  has_many :works
  validates :name, :presence => true
end
