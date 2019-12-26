require 'swagger_helper'

describe 'Shops API' do

  path '/api/v1/shops' do

    post 'Creates a shop' do
      tags 'Shops'
      consumes 'application/json', 'application/xml'
      parameter name: :address, in: :body, schema: {
        type: :object,
        properties: {
          name: { type: :string },
        },
        required: [ 'name' ]
      }

      response '201', 'shop created' do
        let(:shop) { { name: 'TestShop' } }
        run_test!
      end

      response '422', 'invalid request' do
        let(:shop) { { name: 'TestShop' } }
        run_test!
      end
    end
end
end