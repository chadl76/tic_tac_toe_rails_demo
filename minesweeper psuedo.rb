generate_mines

loop 

coords = @player.ask_for_coordinates

if @board.location_valid?(coords)

   
   @board_clear_cell(coords)

 end

 break if game_over?