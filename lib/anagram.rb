# Your code goes here!
class Anagram
    attr_accessor :word
    def initialize(word = 'listen')
        @word = word
    end

    def match(word)
        anagram = []
        isAnagram = false
        word.map do |arr_word|
            test_word = arr_word.chars
            isAnagram_arr = test_word.sort == @word.chars.sort
            if isAnagram_arr == true
                isAnagram = true
                anagram.push(test_word.join(''))
            end
        end
        anagram
        
    end
end

diaper = Anagram.new('diaper')
diaper.match(%w[hello world zombies pants dipper])
