class Book < ApplicationRecord
  belongs_to :collection_item
  has_one_attached :book_image
  accepts_nested_attributes_for :collection_item
end
