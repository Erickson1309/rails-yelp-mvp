class Restaurant < ApplicationRecord
  # has_many :reviews, dependent: :destroy
  # validates :name, presence: true
  # validates :address, presence: true
  # validates :category, presence: true
  # validates :category, inclusion: { in: ["chinese", "italian", "japanese", "french", "belgian"]}
  CATEGORIES = ["chinese", "italian", "japanese", "french", "belgian"]
  validates :name, :address, presence: :true
  validates :category, inclusion: { in: CATEGORIES }
  has_many :reviews, dependent: :destroy
end


