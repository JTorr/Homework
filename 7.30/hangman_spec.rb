require "minitest/autorun"
#Uncomment requirement code when file is created
#require "./hangman.rb"

describe Hangman do
  it "isn't finished when it starts" do
    game = Hangman.new
    assert game.finished? == false
  end

  it "removes letter from alphabet after it is guessed" do
    game = Hangman.new("bird")
    available_leters = %w[b, d, f]
    game.guess("b")
    assert available_letters.include?("b"), false
  end


  it "can be won by guessing the right word" do
    game = Hangman.new("bird")
    word = %w[_, i, r, d]
    game.guess("b")
    assert word == %w[b, i, r, d], true
    assert game.finished? == true
    assert game.won? == true
  end

  it "counts down the tries" do
    game = GuessingGame.new("smurf")
    assert_equal game.tries_left, 5
    available_letters = %w[a, b, c, d]
    game.guess("c")
    assert_equal game.tries_left, 4
  end

  it "is lost when you run out of guesses" do
    game = GuessingGame.new("spork") do
    assert_equal game.tries_left, 1
    available_letters = %w[s, p, k, q]
    game.guess("b")
    assert game.finished?, false
    game.guess("q")
  end
end
