class CharacterNickname < ApplicationRecord
  has_many :characters_character_nicknames, dependent: :destroy
  has_many :characters, through: :characters_character_nicknames
end
