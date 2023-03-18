class CollectionItem < ApplicationRecord
  has_and_belongs_to_many :collections
  has_one :coin, dependent: :destroy
  accepts_nested_attributes_for :coin
  validates_associated :coin

  has_one :book, dependent: :destroy
  accepts_nested_attributes_for :book
  validates_associated :book  
end
