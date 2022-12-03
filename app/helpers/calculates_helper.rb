module CalculatesHelper
	def valid?(array)
    result = true if array.any?

    array.each { |x| result = false if x.scan(/[-0-9]/).length != x.length }

    result
  end

  def calculating(array)
    result = []
    temp = []

    array.each_index do |x|
      temp << array[x]
      if array[x] < array[x + 1]
      else
        result << temp
        temp = []
      end
    rescue StandardError
      result << temp
    end

    result
  end
end
