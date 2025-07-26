class Character < ApplicationRecord
  belongs_to :star

  has_many :characters_character_nicknames, dependent: :destroy
  has_many :character_nicknames, through: :characters_character_nicknames
end
