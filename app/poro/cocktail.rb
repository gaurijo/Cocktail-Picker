class Cocktail 
  attr_reader :name, :ingredient1, 
              :ingredient2, :ingredient3, 
              :ingredient4, :instructions,
              :image, :measurement1, :measurement2,
              :measurement3
  def initialize(data)
    @name = data[:drinks][0][:strDrink]
    @ingredient1 = data[:drinks][0][:strIngredient1]
    @ingredient2 = data[:drinks][0][:strIngredient2]
    @ingredient3 = data[:drinks][0][:strIngredient3]
    @ingredient4 = data[:drinks][0][:strIngredient4]
    @measurement1 = data[:drinks][0][:strMeasure1]
    @measurement2 = data[:drinks][0][:strMeasure2]
    @measurement3 = data[:drinks][0][:strMeasure3]
    # measurements for each ingredient
    # require 'pry'; binding.pry 
    @instructions = data[:drinks][0][:strInstructions]
    @image = data[:drinks][0][:strDrinkThumb]
  end
end