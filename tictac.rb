=begin
The game should have 2 players
The players should be able to take turns
The 'turn' variable can take X or O to indicate which player turn it is.
Total number of available moves.
playing variable should be a boolean to check if game is active or not.
We need an array to hold player inputs.
On every move we have to check if there is a winner, create checkWinner method.

There are 8 possibilities of winning and one possibility of draw.
We add restart method when the game is over
Print messages for taking turns, winner, draw and gameover.

Edge cases:
A single player should not play twice: hence turns should be checked to disallow one playing twice
Reset should not be allowed when the game is not over.

    

    
=end

# def move
#     print '>>> '
#     gets.chomp.strip
# end

# move
class Game
    def initialize
    @board = Array.new(9, " ")
    end

    def display_board
    # puts @board    
        puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
        puts "-----------"
        puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
        puts "-----------"
        puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
       
    end

    
end

display_1 = Game.new
puts display_1.display_board
p Array.new(5," ")