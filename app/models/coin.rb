class Coin < ApplicationRecord
  belongs_to :coin_type
  belongs_to :collection_item
  accepts_nested_attributes_for :collection_item
  has_one_attached :obverse_image
  has_one_attached :reverse_image
end
