require 'rails_helper'

RSpec.describe 'Static content', type: :system do
  scenario 'valid sequence of numbers' do
    visit root_path

    fill_in :numbers, with: '4 213 51 64 2 4'

    find('#submit').click

    expect(find('#maxvalue_0')).to have_text('4')
    expect(find('#maxvalue_1')).to have_text('213')
  end

  scenario 'invalid input' do
    visit root_path

    fill_in :numbers, with: '5 4q 535 26'

    find('#submit').click

    expect(find('#alert')).to have_text('Invalid values')
  end
end
