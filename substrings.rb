dictionary = ["how", "now", "brown", "cow"]

def substrings(check_words, my_words)
    match_words_array = []
    check_words = check_words.downcase.gsub(/[^a-z ]/, '').split(' ') #downcase check_words string/ removes anything that isn't a letter, space or apostrophe, and splits into array 
    check_words.each do |word| #iterate through check_words array
        if my_words.include?(word) #if word is present in dictionary push to match words array
            match_words_array.push(word)
        end
    end
    match_words_hash = match_words_array.reduce(Hash.new(0)) do |word, count| #iterate through array and create hash that counts number of times word appears
        word[count] += 1
        word
    end
    match_words_hash
end

string_story = "Once upon a time there was a brown cow. The name of the cow was Brown. The farmer came by the barn and said: 'How now brown cow?'"
p substrings(string_story, dictionary)