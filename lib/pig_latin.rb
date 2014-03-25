require "pig_latin/version"

module PigLatin
  # Your code goes here...

  def self.translate(word)
    alpha = ('a'..'z').to_a
    #.to_a will change to an array
    # alpha is all of the letters in an array
    vowels = %w[a e i o u]
    # %w this will change the array, to an array of strings
    # vowels, will be an array of all the vowel letters as strings
    consonants = alpha - vowels
    # you can subtrack alpha and vowels which will leave you with constants
    # did not know you could do this, my partner helped me
    # tried it out in irb. --> ["a,"b",c"] - ["b"]    --> ["a","c"]
    if vowels.include?(word[0])# if first letter is a vowel, returns true
      word + 'way'           # add way to end of string  for example egg, first letter is vowel, add way to end
    elsif consonants.include?(word[0]) && consonants.include?(word[1])
      word[2..-1] + word[0..1] + 'ay' # if both the first and second letter is a consonants.
      # takes the third letter and all of the letters to the end of the string,
      # and add the first two letters in the back glove
    elsif consonants.include?(word[0])
      word[1..-1] + word[0] + 'ay'
    else
      word # return unchanged
    end
  end
end
# end
# for words that begin with connsonant cluers is
# moved to end of the word an ay is added

# moves back to first letter it sees that is vowel.



