module Types
  class OrderType < Types::BaseObject
    field :id, ID, null: false
    field :canceled_at, GraphQL::Types::ISO8601DateTime, null: true
    field :delivery_date, GraphQL::Types::ISO8601DateTime, null: false
    field :user, UserType, null: false
    field :pickup_location, PickupLocationType, null: false
    field :items, [OrderItemType], null: false
    field :total_amount, Integer, null: false
    field :ordered_at, GraphQL::Types::ISO8601DateTime, null: false
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end