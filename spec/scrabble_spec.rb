require 'spec_helper'

describe "tile" do
  let(:game) { Game.new }

  it "is expected to have a value based on its letter" do
    expect(game.rules['A']).to eq 1
    expect(game.rules['D']).to eq 2
    expect(game.rules['F']).to eq 4
    expect(game.rules['Z']).to eq 10
  end

  it "there is expected to be 12 'E' tiles" do
    counter = 0
    game.tiles.each do |letter|
      counter+=1 if letter == 'E'
    end
    expect(counter).to eq 12
  end

  it "there is expected to be 100 tiles in total" do
    expect(game.tiles.length).to eq 100
  end
end

describe "rack" do
  it "is expected to have 7 random tiles" do
    game = Game.new
    game.assign_tiles
    expect(game.rack.tiles.length).to eq 7
  end
end

describe "game" do
  context 'scoring the game' do
    let(:game) { Game.new }

    it 'should be able to provide a score for a given word' do
      game.rack.tiles.concat(['A', 'G', 'O', 'D']) #this is a fake rack for testing
      expect(game.score('dog')).to eq 5
    end

    it 'should only score a word found in English dictionary' do
      game.rack.tiles.concat(['Z', 'Y' ,'X', 'A', 'S']) #this is a fake rack for testing
      expect(game.score('zyxas')).to eq "You can't do that!"
    end

    it 'should only allow word from tiles in rack' do
      game.rack.tiles.concat(['A', 'B' ,'C', 'D']) #this is a fake rack for testing
      expect(game.score('Hand')).to eq "You can't do that!"
    end
  end
end
