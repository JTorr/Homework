class GuessingGame
  #Initializing with default answer of nil for testing
  #purposes. Allows you to define an answer when
  #creating the game. If "nil" were not specified,
  #the program would require the answer to be defined
  #when a new GuessingGame is created.
  #allows game_spec to read the
  #instance variable @tries_left
  attr_reader :tries_left
  #attr_reader :won

    def initialize(answer=nil)
      @answer = if answer
        answer
      else
        (0..100).to_a.sample
      end


      @tries_left = 5
      @won = false
    end

    def guess(number)
      #Remove 1 from remaining tries
      @tries_left -= 1
      #Evaluate guess
      if number == @answer
        @won = true
      elsif number < @answer
        "Your guess is too low"
      else
        "Your guess is too high"
      end
    end

    def finished?
      #If there are no tries left or game is won, returns true
      @tries_left.zero? || @won
    end

    def won?
      #makes @won true
      @won
    end


end
