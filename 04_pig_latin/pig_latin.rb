def translate(words)
	vowels = ["a", "e", "i", "o", "u"]
	array = []
	if words.include?(" ")
	final = words.split("")
	else
	final = word
	end
	final.each do |word|
		word_array = word.split("")
		if vowels.include?(word_array[0])
			array << "#{word}ay"
		elsif (vowels.include?(word_array[0]) == false) &&
			(vowels.include?(word_array[1]) == false)
			final_array = word_array.pop(word_array.length - 2)
			array << "#{final_array.join('')}#{word_array[0]}#{word_array[1]}ay"
		elsif vowels.include?(word_array[0]) == false
			final_array = word_array.pop(word_array.length - 1)
			array << "#{final_array.join('')}#{word_array[0]}ay"
		end
		return array
	end
end
