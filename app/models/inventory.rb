class Inventory < ApplicationRecord
  belongs_to :character
  has_many :items, dependent: :destroy
end
