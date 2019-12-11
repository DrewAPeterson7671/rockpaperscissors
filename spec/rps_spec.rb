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

  it("returns true if paper is the object and rock is the argument") do
    game3 = RPS.new()
    expect(game3.wins?("paper", "rock")).to(eq(true))
  end

  it("returns false if paper is the object and scissors is the argument") do
    game4 = RPS.new()
    expect(game4.wins?("paper", "scissors")).to(eq(false))
  end

  it("returns true if scissors is the object and rock is the argument") do
    game5 = RPS.new()
    expect(game5.wins?("scissors", "rock")).to(eq(true))
  end

  it("returns false if scissors is the object and paper is the argument") do
    game6 = RPS.new()
    expect(game6.wins?("scissors", "paper")).to(eq(false))
  end

end
