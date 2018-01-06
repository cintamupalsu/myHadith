class Chapter < ApplicationRecord
  has_many :verses, dependent: :destroy
end
