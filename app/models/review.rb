class Review < ApplicationRecord
  belongs_to :shirt
  validates :content, length: { minimum: 15 }
end
