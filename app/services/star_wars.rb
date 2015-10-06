class StarWars
  include HTTParty
  base_uri 'swapi.co/api'

  def starships
    self.class.get('/starships')
  end
end
