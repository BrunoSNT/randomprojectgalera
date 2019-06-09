class Theme < ApplicationRecord
    has_many :adventures, dependent: :destroy
end
