class Film < ApplicationRecord
  validates :titre, presence: true, uniqueness: true
  validates :apercu, presence: true
end
