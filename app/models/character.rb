class Character < ApplicationRecord
  belongs_to :faction
  belongs_to :profession
  belongs_to :alignment
  belongs_to :adventure
  belongs_to :user
  has_many :abilities, as: :abilable
  has_one :inventory, dependent: :destroy
  has_many :items, through: :inventory
  accepts_nested_attributes_for :abilities

end
