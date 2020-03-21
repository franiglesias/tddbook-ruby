class BowlingGame

  def initialize
    @rolls = []
  end

  def roll(pins_down)
    @rolls.push pins_down
  end

  FRAMES_IN_A_GAME = 10
  ALL_PINS_DOWN = 10

  def score
    score = 0
    roll = 0

    FRAMES_IN_A_GAME.times do
      if strike? roll
        frame_score = strike_score roll
        roll += 1
      elsif spare? roll
        frame_score = spare_score roll
        roll += 2
      else
        frame_score = base_frame_score roll
        roll += 2
      end
      score += frame_score
    end

    score
  end

  private

  def spare_score(roll)
    ALL_PINS_DOWN + @rolls[roll + 2]
  end

  def strike_score(roll)
    ALL_PINS_DOWN + base_frame_score(roll + 1)
  end

  def strike?(roll)
    ALL_PINS_DOWN == @rolls[roll]
  end

  def spare?(roll)
    ALL_PINS_DOWN == base_frame_score(roll)
  end

  def base_frame_score(roll)
    @rolls[roll] + @rolls[roll + 1]
  end
end
