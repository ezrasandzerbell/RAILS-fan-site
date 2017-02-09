class Work < ActiveRecord::Base
  belongs_to :user
  has_many :reviews
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

  def getAverageRating
    allRatings = []
    if self.reviews.any?
      allReviews = self.reviews
      allReviews.each do |review|
        allRatings << review.rating
      end
      lengthNum = allRatings.length
      sumTotal = allRatings.sum
      finalNum = sumTotal / lengthNum
      return finalNum
    else
      return "No reviews yet"
    end
  end
end
