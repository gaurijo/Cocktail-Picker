class CocktailFacade
  def self.create_cocktail(name)
    cocktail = CocktailService.get_cocktail(name)
    Cocktail.new(cocktail)
  end
end