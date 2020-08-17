=begin
    
The game will be played by two players
The game will contain a board with an array of 9 empty stings
Define a winning combination constant which contains the a nested array of 
index values of possible winning  combinations  
=end


 WIN_COMBINATIONS = [
    [0, 1, 2], #top row
    [3, 4, 5], #middle row
    [6, 7, 8], #bottom row
    [0, 3, 6], #left column
    [1, 4, 7], #middle column
    [2, 5, 8], #right column
    [0, 4, 8], #leading diagonal
    [6, 4, 2] #minor diagonal
  ]

#   The user input should be an index corresponding to the index of the winning combibations
def user_input_to_index(user_input)
    # prompt user for input and store it in the method variable
    user_input = gets.chomp.stripe
    # convert the input to an integer and make it an index of win combintions
    user_input.to_i -1 
end