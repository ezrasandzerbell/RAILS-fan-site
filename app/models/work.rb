class Work < ActiveRecord::Base
  belongs_to :user

  before_save :capitalize_name

  validates :name, :presence => true
  validates :image, :presence => true
  validates :media, :presence => true
  validates :published, :presence => true
  validates :rating, :presence => true
  validates :content, :presence => true

  def capitalize_name
    self.name = self.name.titleize
  end
end
