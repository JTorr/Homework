

# These probably don't qualify as "better" answers
Questions = [
  {
     question: "How fat is yo mama?",
     choices: [
       "Quite thin, thank you very much.",
       "About half as fat as yo mama.",
       "Yo mama is so fat, she threw on a sheet for Halloween and went as Antartica.",
       "Moo"
     ],
     answer: 2
  },
  {
    question: "What are the dimensions of a 2x4?",
    choices: [
      "2 x 4",
      "1.5 x 3.5",
      "3 x 5",
      "None of the above"
    ],
    answer: 1
  },
  {
    question: "The inventor of which soda was an albino:",
    choices: [
      "Coca Cola",
      "Ginger Ale",
      "Mike's Hard Lemonde",
      "Seven Up"
    ],
    answer: 3
  },
]

class QuizGame
attr_reader :score, :answered_right, :answered_wrong


  def initialize(questions)
    @questions = questions
    @score = 0
    @answered_right = [ ]
    @answered_wrong = [ ]
    @questions_left = Questions.clone
  end

  def finished?
    @questions_left.empty? # == 0
  end

  def guess
    @questions_left.shuffle!
    @current_question = @questions_left.pop # Questions.shuffle[0]
    #@questions_left -= 1
    puts "#{@current_question[:question]}"
    puts "#{@current_question[:choices]}"
    puts "Input the number corresponding to your answer"
    @answer = gets.chomp.to_i
    puts "You answered: #{@answer}"
    if @current_question[:answer] == @answer -1
      @score += 1
      @answered_right.push @current_question[:question]
    else
      @answered_wrong.push @current_question[:question]
    end
  end
end

puts "The game begins."
game = QuizGame.new(Questions)

until game.finished?
  game.guess
end

puts "Game Over. Your score is #{game.score}"
puts "Your correct answers are #{game.answered_right}"
puts "The questions you answered incorreclty are #{game.answered_wrong}"
