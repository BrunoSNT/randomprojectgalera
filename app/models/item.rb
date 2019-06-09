class Item < ApplicationRecord
  belongs_to :inventory
  has_many :dices, as: :diceable
end
