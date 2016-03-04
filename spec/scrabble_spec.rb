require 'spec_helper'

describe "tile" do
  it "is expected to have a value based on its letter" do
    game = Game.new
    expect(game.rules['A']).to eq 1
    expect(game.rules['D']).to eq 2
    expect(game.rules['F']).to eq 4
    expect(game.rules['Z']).to eq 10
  end
end
