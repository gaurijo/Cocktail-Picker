class Liquor 
  attr_reader :name
  def initialize(data)
    @name = data[:strDrink]
  end
end