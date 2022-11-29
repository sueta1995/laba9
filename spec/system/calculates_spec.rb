require 'rails_helper'

RSpec.describe 'Static content', type: :system do
  scenario 'valid sequence of numbers' do
    visit root_path

    fill_in :numbers, with: '4 213 51 64 2 4'

    find('#submit').click

    expect(find('#max-sequence')).to have_text('Наибольшая последовательность')
  end

  scenario 'invalid input' do
    visit root_path

    fill_in :numbers, with: '5 4q 535 26'

    find('#submit').click

    expect(find('#alert')).to have_text('Invalid values')
  end
end
