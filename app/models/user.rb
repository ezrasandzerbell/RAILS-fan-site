class User < ActiveRecord::Base
  has_many :works
  has_many :reviews

  validates :name, :presence => true


end
