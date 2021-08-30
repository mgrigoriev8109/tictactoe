#Think about tic-tac-toe in the context of classes, instances, methods

#Breaking down tic-tac-toe into smaller problems:

#classes: game_board, first_player, second_player

#game_board class generates a new game_board instance with 9 O's
#first and second player generate new_round instances resetting their X selections
#the method play_round is shared by first_player and second_player
#it contains other methods which
    #prints current board
    #prompts the players for where they want to place their X
    #checks the board for winner (if certain combination of numbers is X's)
