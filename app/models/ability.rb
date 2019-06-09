class Ability < ApplicationRecord
  belongs_to :abilable, polymorphic: true, optional: true
end
