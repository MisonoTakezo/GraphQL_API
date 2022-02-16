# frozen_string_literal: true

module Types
  class LabelType < Types::BaseObject
    field :id, ID, null: false
    field :name, String
    field :posts, [Types::PostType], null: True
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false

    def posts
      Loaders::AssociationLoader.for(Label, :posts).load(object)
    end
  end
end
