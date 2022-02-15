class Label < ApplicationRecord
  has_many :posts, dependent: :nullify
end
