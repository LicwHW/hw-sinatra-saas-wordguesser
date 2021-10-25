class WordGuesserGame

  # add the necessary class methods, attributes, etc. here
  # to make the tests in spec/wordguesser_game_spec.rb pass.

  # Get a word from remote "random word" service

  attr_accessor :word
  attr_accessor :guesses
  attr_accessor :wrong_guesses
  def initialize(word)
    @word = word
    @guesses = ''
    @wrong_guesses = ''
  end

  def guess (word)
    if (word =~ /[a-zA-Z]$/) != 0
      raise ArgumentError, 'The input must be a letter'
    end 
    right_word = @word.downcase
    word = word.downcase

    if guesses.include?word or wrong_guesses.include?word
      return false
    end
    
    if right_word.include?word
      @guesses.concat(word)
    else
      @wrong_guesses.concat(word)
    end
    return true
  end

  def word_with_guesses
    display = ''
    @word.each_char do |letter|
      if @guesses.include?letter
        display.concat(letter)
      else
        display.concat('-')
      end
    end
    return display
  end

  def check_win_or_lose
    if @wrong_guesses.length >= 7
      return :lose
    end
    @word.each_char do |letter|
      if not @guesses.include?letter
        return :play
      end
    end
    return :win
  end 

  # You can test it by installing irb via $ gem install irb
  # and then running $ irb -I. -r app.rb
  # And then in the irb: irb(main):001:0> WordGuesserGame.get_random_word
  #  => "cooking"   <-- some random word
  def self.get_random_word
    require 'uri'
    require 'net/http'
    uri = URI('http://randomword.saasbook.info/RandomWord')
    Net::HTTP.new('randomword.saasbook.info').start { |http|
      return http.post(uri, "").body
    }
  end

end
