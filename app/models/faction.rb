class Faction < ApplicationRecord
  belongs_to :alignment
  has_many :characters, dependent: :destroy
end
