require 'rails_helper'

RSpec.describe StarWarsService do
  it 'returns list of starships' do
    expect(subject.starships.size).to eq 37
  end
end
