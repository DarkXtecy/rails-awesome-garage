class Car < ApplicationRecord
  belongs_to :owner
  has_many :reviews, dependent: :destroy
  has_many :favourites, dependent: :destroy

  validates :brand, :model, :fuel, :year, presence: true
  validates :year, numericality: { only_integer: true, greater_than_or_equal_to: 1886 }
end
