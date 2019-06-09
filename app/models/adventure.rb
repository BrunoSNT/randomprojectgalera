class Adventure < ApplicationRecord
    belongs_to :theme
    has_many :characters, dependent: :destroy
end
