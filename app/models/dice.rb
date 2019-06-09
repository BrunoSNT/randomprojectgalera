class Dice < ApplicationRecord
    belongs_to :diceable, polymorphic: true, optional: true
end
