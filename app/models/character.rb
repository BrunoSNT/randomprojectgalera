class Character < ApplicationRecord
  belongs_to :faction
  belongs_to :profession
  belongs_to :alignment
  belongs_to :adventure
  belongs_to :user
  has_one :inventory
end
