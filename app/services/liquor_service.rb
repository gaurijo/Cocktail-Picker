class LiquorService
  def self.conn 
    conn = Faraday.new("https://www.thecocktaildb.com/")
  end

  def self.get_drinks(liquor)
    response = conn.get("api/json/v1/1/filter.php?i=#{liquor}")
    JSON.parse(response.body, symbolize_names: true)
  end
end