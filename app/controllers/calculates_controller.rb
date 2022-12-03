# frozen_string_literal: true

# class of controller
class CalculatesController < ApplicationController
  include CalculatesHelper

  def new
  end

  def create
    @numbers = params[:numbers].split(' ')

    if valid?(@numbers)
      @result = calculating(@numbers.collect(&:to_i))
      @max_result = @result.max_by(&:length)
    else
      redirect_to(root_path, alert: 'Invalid values')
    end
  end
end
