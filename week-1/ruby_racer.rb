class RubyRacer
  attr_reader :players, :die, :length

  def initialize(players, die, length = 30)
    @players = players
    @die = die
    @length = 30
    @position = Hash.new
    @players.each do |player|
      @position[player] = 0
    end
  end

  # Returns +true+ if one of the players has reached
  # the finish line, +false+ otherwise
  def finished?
    @players.any? do |player|
      @position[player] == @length
    end
  end

  # Returns the winner if there is one, +nil+ otherwise
  def winner
    tie_string = ""
    @players.each do |player|
      if @position[player] == @length
        tie_string << "#{player}"
      end
    end

    if tie_string.length > 1
      return "no one"
    else
      return tie_string[0]
    end

  end

  # Rolls the die and advances +player+ accordingly
  def advance_player(player)
    @position[player] += @die.roll
    if @position[player] > @length
      @position[player] = @length
    end
  end

  # Returns the current state of the game as a string
  # that can be printed on the command line.
  # The board should have the same dimensions each time.
  def board_visualization
    @players.each do |player|
      before = 0
      after = @length
      puts "  | "*(before += @position[player]) + "#{player}" + " |  "*(after -= @position[player])
    end
    nil
  end


end