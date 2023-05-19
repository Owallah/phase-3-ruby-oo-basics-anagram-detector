# Your code goes here!
class Anagram
    attr_accessor :word
    def initialize(word = 'listen')
        @word = word
    end

    def match(word)
        anagram = []
        word.map do |arr_word|
            if arr_word.chars.sort == @word.chars.sort
                anagram.push(arr_word)
            end
        end
        anagram
        
    end
end

diaper = Anagram.new('diaper')
diaper.match(%w[hello world zombies pants dipper])
