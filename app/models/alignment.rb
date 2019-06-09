class Alignment < ApplicationRecord
    has_many :characters, dependent: :destroy
    has_many :factions, dependent: :destroy
end
