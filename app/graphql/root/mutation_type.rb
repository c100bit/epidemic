# frozen_string_literal: true

module Root
  class MutationType < Types::Base::Object
    field :create_order, mutation: Mutations::CreateOrder
    field :update_cart, mutation: Mutations::UpdateCart
  end
end
