class Roleplay < ApplicationRecord
  belongs_to :character
  belongs_to :user

  validates :length, presence: true
  validates :user, presence: true
  validates :character, presence: true
end
