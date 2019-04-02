class Shirt < ApplicationRecord
  belongs_to :category
  #adding reviews
  has_many :reviews, dependent: :destroy

  validates :sku, presence: true, uniqueness: true
  validates :name, presence: true, uniqueness: true
  monetize :price_cents

end
