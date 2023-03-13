class CollectionItem < ApplicationRecord
  has_one :coin, dependent: :destroy
  has_and_belongs_to_many :collections
  accepts_nested_attributes_for :coin
  validates_associated :coin
end
