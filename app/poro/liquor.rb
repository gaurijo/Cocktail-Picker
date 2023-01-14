class Liquor 
  attr_reader :name
  def initialize(data)
    @name = data[:strDrink]
    # require 'pry'; binding.pry 
  end
end