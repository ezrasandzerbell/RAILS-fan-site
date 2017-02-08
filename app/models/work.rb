class Work < ActiveRecord::Base
  belongs_to :user

  validates :name, :presence => true
  validates :image, :presence => true
  validates :media, :presence => true
  validates :published, :presence => true
  validates :rating, :presence => true
  validates :content, :presence => true
end
