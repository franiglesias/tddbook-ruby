require 'rspec'
require_relative '../src/bowling_game'

RSpec.describe 'A Bowling Game' do

  before do
    @game = BowlingGame.new
  end

  it 'should roll a ball knocking down 0 pins' do
    @game.roll 0
  end

  it 'should score a gutter game' do
    roll_many 20, 0
    expect(@game.score).to eq(0)
  end

  it 'should score all ones' do
    roll_many 20, 1
    expect(@game.score).to eq(20)
  end

  it 'should score an spare' do
    roll_spare
    @game.roll 3
    roll_many 17, 0
    expect(@game.score).to eq(16)
  end

  it 'should score an strike' do
    @game.roll(10)
    @game.roll(4)
    @game.roll(3)
    roll_many 17, 0
    expect(@game.score).to eq(24)
  end

  it 'should score perfect game' do
    roll_many 12, 10
    expect(@game.score).to eq(300)
  end


  def roll_many(times, pins_down)
    times.times do
      @game.roll pins_down
    end
  end

  def roll_spare
    @game.roll 5
    @game.roll 5
  end
end
