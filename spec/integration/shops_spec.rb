require 'swagger_helper'

describe 'Shops API' do

  # path '/api/v1/shops' do

  #   post 'Creates a shop' do
  #     tags 'Shops'
  #     consumes 'application/json', 'application/xml'
  #     parameter name: :address :city :country :zip_code, in: :body, schema: {
  #       type: :object,
  #       properties: {
  #         name: { type: :string },
  #         adress: {type: :string},
  #         city: {type: :string},

  #       },
  #       required: [ 'name' ]
  #     }

  #     response '201', 'shop created' do
  #       let(:shop) { { name: 'TestShop' } }
  #       run_test!
  #     end

  #     response '422', 'invalid request' do
  #       let(:shop) { { name: 'TestShop' } }
  #       run_test!
  #     end
  #   end
  # end

  path '/api/v1/shops/{id}' do

    get 'Retrieves a shop' do
      tags 'Shops'
      produces 'application/json', 'application/xml'
      parameter name: :id, :in => :path, :type => :string

      response '200', 'name found' do
        schema type: :object,
          properties: {
            id: { type: :integer, },
            name: { type: :string },
            address: { type: :string },
            city: { type: :string },
            country: { type: :string },
            zip_code: { type: :string }
          },
          required: [ 'id', 'name', 'address', 'city', 'country', 'zip_code' ]

        let(:id) { Shop.create(name: 'TestShop', adress: 'Test Adress', city: 'city', country: 'country', zip_code: 'Zip Code') }
        run_test!
      end

      response '404', 'shop not found' do
        let(:id) { 'invalid' }
        run_test!
      end
    end
  end
end