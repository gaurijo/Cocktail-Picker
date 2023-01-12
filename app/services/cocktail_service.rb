class CocktailService
  def self.conn 
    conn = Faraday.new("https://www.thecocktaildb.com/")
  end

  def self.get_cocktail(name)
    response = conn.get("api/json/v1/1/search.php?s=#{name}")
    JSON.parse(response.body, symbolize_names: true)
  end
end