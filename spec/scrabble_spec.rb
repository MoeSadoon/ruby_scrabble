require 'spec_helper'

describe "tile" do
  let(:game) { Game.new }

  it "is expected to have a value based on its letter" do
    game = Game.new
    expect(game.rules['A']).to eq 1
    expect(game.rules['D']).to eq 2
    expect(game.rules['F']).to eq 4
    expect(game.rules['Z']).to eq 10
  end

  it "there is expected to be 12 'E' tiles" do
    game = Game.new
    counter = 0
    game.tiles.each do |letter|
      counter+=1 if letter == 'E'
    end
    expect(counter).to eq 12
  end

  it "there is expected to be 100 tiles in total" do
    game = Game.new
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
