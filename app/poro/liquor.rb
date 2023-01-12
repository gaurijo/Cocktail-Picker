class Liquor 
  attr_reader :name
  def initialize(data)
    @name = data[:strDrink]
    # @name = data.try(:[], :drinks).try(:[], 0).try(:[], :strDrink)
    # require 'pry'; binding.pry 
  end
end