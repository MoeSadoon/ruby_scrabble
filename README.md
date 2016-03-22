Ruby Scrabble
=================

Premise
---------
A basic game of scrabble (English distribution rules) programmed in Ruby and test-driven using rspec.

Scrabble rules: https://en.wikipedia.org/wiki/Scrabble_letter_distributions



Running tests
-------
1. Clone this repo
2. Run  the command `gem install bundle` in project directory
3. When the installation completes, run `bundle`
4. Run 'rspec'

Simulating on IRB

```
$ irb
2.2.3 :001 > game = Game.new
 => #<Game:0x007fbfb4344ce0 @rules={"A"=>1, "B"=>3, "C"=>3, "D"=>2, "E"=>1, "F"=>4, "G"=>2, "H"=>4, "I"=>1, "J"=>8, "K"=>5, "L"=>1, "M"=>3, "N"=>1, "O"=>1, "P"=>3, "Q"=>10, "R"=>1, "S"=>1, "T"=>1, "U"=>1, "V"=>4, "W"=>4, "X"=>8, "Y"=>4, "Z"=>10, "BLANK"=>0}, @tiles=["A", "A", "A", "A", "A", "A", "A", "A", "A", "B", "B", "C", "C", "D", "D", "D", "D", "E", "E", "E", "E", "E", "E", "E", "E", "E", "E", "E", "E", "F", "F", "G", "G", "G", "H", "H", "I", "I", "I", "I", "I", "I", "I", "I", "I", "J", "K", "L", "L", "L", "L", "M", "M", "N", "N", "N", "N", "N", "N", "O", "O", "O", "O", "O", "O", "O", "O", "P", "P", "Q", "R", "R", "R", "R", "R", "R", "S", "S", "S", "S", "T", "T", "T", "T", "T", "T", "U", "U", "U", "U", "V", "V", "W", "W", "X", "Y", "Y", "Z", "BLANK", "BLANK"], @rack=#<Rack:0x007fbfb43644c8 @tiles=[]>>
2.2.3 :002 > game.assign_tiles
 => ["E", "M", "E", "O", "N", "C", "G"]
2.2.3 :003 > game.score("gnome")
 => 8
```
