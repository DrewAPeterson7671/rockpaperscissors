require('rspec')
require('rps')

describe('RPS#rps') do
  it("returns true if rock is the object and scissors is the argument") do
    game = RPS.new()
    expect(game.wins?("rock", "scissors")).to(eq(true))
  end

  it("returns false if rock is the object and paper is the argument") do
    game2 = RPS.new()
    expect(game2.wins?("rock", "paper")).to(eq(false))
  end
end
