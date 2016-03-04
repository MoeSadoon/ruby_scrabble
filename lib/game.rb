class Game
  attr_reader :rules, :tiles, :rack

  def initialize
    @rules = {
      'A' => 1, 'B' => 3, 'C' => 3, 'D' => 2,
      'E' => 1, 'F' => 4, 'G' => 2, 'H' => 4,
      'I' => 1, 'J' => 8, 'K' => 5, 'L' => 1,
      'M' => 3, 'N' => 1, 'O' => 1, 'P' => 3,
      'Q' => 10, 'R' => 1, 'S' => 1, 'T' => 1,
      'U' => 1, 'V' => 4, 'W' => 4, 'X' => 8,
      'Y' => 4, 'Z' => 10, 'BLANK' => 0
    }

    @tiles = []
    @rules.each do |key, value|
      12.times { @tiles << key } if key == 'E'
      9.times { @tiles << key } if ['A', 'I'].include?(key)
      8.times { @tiles << key } if key == 'O'
      6.times { @tiles << key } if ['N', 'R', 'T'].include?(key)
      4.times { @tiles << key } if ['L', 'S', 'U', 'D'].include?(key)
      3.times { @tiles << key } if key == 'G'
      2.times { @tiles << key } if ['B', 'C', 'M', 'P', 'F', 'H', 'V', 'W', 'Y', 'BLANK'].include?(key)
      1.times { @tiles << key } if ['K', 'J', 'X', 'Q', 'Z'].include?(key)
    end

    @rack = Rack.new
  end

  def assign_tiles
    @rack.tiles.concat(@tiles.sample(7))
  end

  def score(word)
    if in_dictionary?(word)
      letters = word.upcase.split('')
      score = 0
      letters.each do |letter|
        score+=@rules[letter]
      end
      return score
    else
      "You can't do that!"
    end
  end

  private

  def in_dictionary?(word)
    true if File.read('words.txt').include?(word.downcase)
  end

end
