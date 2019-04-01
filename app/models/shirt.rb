class Shirt < ApplicationRecord
  belongs_to :category
  validates :sku, presence: true, uniqueness: true
  validates :name, presence: true, uniqueness: true

end
