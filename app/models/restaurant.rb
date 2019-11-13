class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  # A restaurant must have at least a name, an address and a category.
  validates :name, :address, :category, presence: true
  # def validates(*fields, options)
  # The restaurant category should belong to a fixed list ["chinese", "italian", "japanese", "french", "belgian"].
  validates :category, inclusion: { in: ["chinese", "italian", "japanese", "french", "belgian"] }
end


