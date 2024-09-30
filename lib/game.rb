class Game
  def initiliaze
    @computer = Computer.new
    @player = Player.new
  end

  def win?
    @player.guess == @computer.generate_code
  end

  def play
    i = 0
    @computer.generate_code
    puts "\nSecret code was randomly generated by the computer"
          
    while i <= 11
      puts "\nPlease insert your guess in Color1-Color2-Color3-Color4 format, where - indicates whitespace."
      player_guess = gets.chomp.split(' ')
      @player.guess(player_guess)
      if win?
        puts "You have correctly guessed the secret code, congratulations!"
        break
      else
        i += 1
      end
    end
  end
end