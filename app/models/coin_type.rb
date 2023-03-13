class CoinType < ApplicationRecord
  has_many :coins
  has_one_attached :obverse_image
  has_one_attached :reverse_image
end
