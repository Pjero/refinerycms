# frozen_string_literal: true

module Refinery
  module Api
    module Fields
      module Pages
        PageField = GraphQL::Field.define do
          name 'Page'
          description 'Find a page by ID'

          type Types::Pages::PageType
          argument :id, !types.ID

          resolve -> (obj, args, ctx) {
            Refinery::Page.find_by_id(args[:id])
          }
        end
      end
    end
  end
end