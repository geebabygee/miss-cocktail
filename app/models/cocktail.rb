class Cocktail < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses
  # has_many :reviews, dependent: :destroy
  # mount_uploader :photo, PhotoUploader
end

# the has many doses MUST COME BEFORE the has many ingredients through doses!
