class Product < ApplicationRecord
  has_many :reviews

  validates :product_id, presence: true
  validates :name, presence: true

end
