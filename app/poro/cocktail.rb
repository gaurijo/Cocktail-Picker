class Cocktail 
  attr_reader :name, :ingredient1, 
              :ingredient2, :ingredient3, 
              :ingredient4, :instructions,
              :image 
  def initialize(data)
    @name = data[:drinks][0][:strDrink]
    @ingredient1 = data[:drinks][0][:strIngredient1]
    @ingredient2 = data[:drinks][0][:strIngredient2]
    @ingredient3 = data[:drinks][0][:strIngredient3]
    @ingredient4 = data[:drinks][0][:strIngredient4]
    @instructions = data[:drinks][0][:strInstructions]
    @image = data[:drinks][0][:strDrinkThumb]
  end
end