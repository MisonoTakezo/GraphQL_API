# frozen_string_literal: true

module Types
  class PostType < Types::BaseObject
    field :id, ID, null: false
    field :user_id, Integer
    field :label_id, Integer
    field :title, String
  end
end
