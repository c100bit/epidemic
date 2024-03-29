# frozen_string_literal: true

module Root
  class QueryType < Types::Base::Object

    field :news_list, [Types::NewsType], null: false
    field :pages, [Types::PageType], null: false
    field :vaccination_places, [Types::VaccinationPlaceType], null: false
    field :vaccination_calendars, [Types::VaccinationCalendarType], null: false

    field :page, Types::PageType, null: false do
      argument :id, ID, required: true
    end

    field :news, Types::NewsType, null: false do
      argument :id, ID, required: true
    end

    field :vaccination_place, Types::VaccinationPlaceType, null: false do
      argument :id, ID, required: true
    end

    field :user, Types::UserType, null: false

    def user
      context[:current_user]
    end

    def page(id:)
      Page.find(id)
    end

    def news(id:)
      News.find(id)
    end

    def vaccination_place(id:)
      VaccinationPlaceType.find(id)
    end

    def pages
      Page.all
    end

    def news_list
      News.all
    end

    def vaccination_places
      VaccinationPlace.all
    end

    def vaccination_calendars
      VaccinationCalendar.all
    end

  end
end
