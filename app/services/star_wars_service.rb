class StarWarsService
  def self.starships
    new.starships
  end

  def starships
    @starships = []
    begin
      @last_results = get(url)
      @starships = @starships + @last_results[:results]
    end until @last_results[:next].blank?
    @starships
  end

  def url
    next_url || 'http://swapi.co/api/starships'
  end

  def next_url
    return nil unless @last_results
    @last_results[:next]
  end

  def get(url)
    JSON.parse(HTTParty.get(url).body).with_indifferent_access
  end
end
