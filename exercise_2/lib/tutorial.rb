class Tutorial
  DIFFICULTIES = {
    easy: 0,
    medium: 1,
    hard: 2,
    advanced: 3,
    expert: 4
  }

  attr_reader :type, :difficulty

  def initialize(name, type, difficulty)
    @name = name
    @type = type
    @difficulty = difficulty
  end

  def is_harder_than?(other_tutorial)
    if @type != other_tutorial.type
      "You cannot compare a Ruby with a Javascript tutorial."
    else
      own_difficulty = difficulty_as_a_number(@difficulty)
      other_difficulty = difficulty_as_a_number(other_tutorial.difficulty)

      if  own_difficulty > other_difficulty
        true
      else
        false
      end
    end
  end

  private

  def difficulty_as_a_number(difficulty)
    DIFFICULTIES[difficulty]
  end
end
