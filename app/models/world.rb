class World < ApplicationRecord
  belongs_to :character
  belongs_to :chatroom
end
