class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  CATEGORIES = [
   "french",
   "italian",
   "belgian",
   "japanese",
   "chinese"
 ]

  validates :name, uniqueness: true, presence: true
  validates :address, presence: true

  validates :category, inclusion: { in: CATEGORIES }
end
