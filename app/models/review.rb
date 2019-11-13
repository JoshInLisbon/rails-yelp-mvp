class Review < ApplicationRecord
  belongs_to :restaurant

  # A review must have a parent restaurant.
  validates_associated :restaurant
  # A review must have content and a rating. The rating should be a number between 0 and 5.
  validates :content, presence: true
  validates :rating, numericality: true, inclusion: { in: (0..5) } #, acceptance: { message: 'It must be a number between 0 and 5' }
end
