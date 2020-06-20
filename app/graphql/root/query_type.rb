# frozen_string_literal: true

module Root
  class QueryType < Types::Base::Object
    # field :companies, [Types::CompanyType], null: false,
    #                                         description: 'Get all companies'
    # field :company,
    #       Types::CompanyType,
    #       null: false,
    #       description: 'Get one company' do
    #   argument :id, ID, required: true
    # end

    # def companies
    #   Company.all
    # end

    # def company(id:)
    #   Company.find(id)
    # end
  end
end
