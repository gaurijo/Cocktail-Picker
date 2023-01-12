class LiquorFacade
  def self.create_drinks(liquor)
    drinks = LiquorService.get_drinks(liquor)
    drinks[:drinks][0..9].map do |drink| 
      Liquor.new(drink)
    end
  end
end