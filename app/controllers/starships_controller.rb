class StarshipsController < ApplicationController
  def index
    @starships = StarWarsService.starships
  end
end
