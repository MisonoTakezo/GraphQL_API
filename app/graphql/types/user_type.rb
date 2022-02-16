# frozen_string_literal: true

module Types
  class UserType < Types::BaseObject
    field :id, ID, null: false
    field :name, String
    field :email, String
    field :posts, [Types::PostType], null: true
    field :total_posts, Integer, null: false
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false

    def posts
      Loaders::AssociationLoader.for(User, :posts).load(object)
    end

    def total_posts
      Loaders::AssociationCountLoader.for(User, :posts).load(object)
    end
  end
end
