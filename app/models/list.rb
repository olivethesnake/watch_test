class List < ApplicationRecord
  has_many :signets, dependent: :destroy
  has_many :films, through: :signets, dependent: :destroy
  has_many :reviews, dependent: :destroy

  validates :name, uniqueness: true, presence: true
end
