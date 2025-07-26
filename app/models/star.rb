class Star < ApplicationRecord
  has_one :character, dependent: :nullify
end
