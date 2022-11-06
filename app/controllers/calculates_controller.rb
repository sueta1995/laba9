class CalculatesController < ApplicationController
  def new
  end

  def create
    numbers = params.require(:calculates).permit(:numbers)[:numbers].split(' ')
    
    if valid?(numbers)
      @result = calculating(numbers.collect { |x| x.to_i })

      render :results
    else
      flash.now[:alert] = 'Введены не верные значения!'

      render :new
    end
  end

  private

  def valid?(array)
    result = true if array.any?

    array.each { |x| result = false if x.scan(/[-0-9]/).length != x.length }

    result
  end

  def calculating(array)
    result = []
    temp = []

    array.each_index do |x|
      begin
        array[x] < array[x+1] ? temp << array[x] : (temp << array[x]; result << temp; temp = [])
      rescue
        temp << array[x]; result << temp
      end
    end

    result
  end
end
