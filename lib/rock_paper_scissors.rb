class RockPaperScissors

  # Exceptions this class can raise:
  class NoSuchStrategyError < StandardError ; end

  def self.winner(player1, player2)
   # winner = case player1[1].upcase + player2[1].upcase
    winner = case player1[1] + player2[1]
	    when "PR" then player1
	    when "RP" then player2
	    when "RS" then player1
    	when "SR" then player2
	    when "PS" then player2
	    when "SP" then player1
	    #when ("PP" || "RR" || "SS") then player1
	    when "PP" then player1
	    when "RR" then player1
	    when "SS" then player1
	    else raise NoSuchStrategyError, "Strategy must be one of R,P,S"
	    #else raise aRockPaperScissors::NoSuchStrategyError puts "Strategy must be one of R,P,S"
    end
    
    return winner
  end

  def self.tournament_winner(tournament)
    # YOUR CODE HERE
    if tournament[0][0].is_a? String
      return winner(tournament[0], tournament[1])
      #return winner( tournament_winner( tournament[tournament[0]...tournament[length/2]] ), tournament_winner( tournament[length/2]...tournament_winner[length]))
    else
      return winner(tournament_winner(tournament[0]), tournament_winner(tournament[1]))
    end
  end

end
