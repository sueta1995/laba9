# frozen_string_literal: true

# require 'rails_helper'

# RSpec.describe CalculatesController, type: :controller do
#   describe 'GET /new' do
#     it 'has a 200 status code' do
#       get :new
#       expect(response.status).to eq(200)
#     end
#   end

#   describe 'input validation' do
#     it 'returns true' do
#       expect(CalculatesController.valid?(['1', '-5', '41', '0', '56', '51'])).to eq(true)
#     end

#     it 'returns false' do
#       expect(CalculatesController.valid?(%w[eq 43 2a])).to eq(false)
#     end
#   end

#   describe 'calculating' do
#     it 'returns correct answer' do
#       expect(CalculatesController.calculating([15, 16, 8, 0, -3, 5, 6])).to eq([[15, 16], [8], [0], [-3, 5, 6]])
#     end
#   end

#   describe 'post_event' do
#     it 'should respond with 200' do
#       post 'create', params: { calculates: { numbers: '4 5 3 2 1 0' } }

#       response.code.should eq '200'
#     end
#   end
# end
