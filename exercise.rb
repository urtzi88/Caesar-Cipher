def solve_cipher(input)
	message = []
	message = input.split(//)
	decripted_message = []
	for letter in message
		orig = letter.ord
		if orig == 97
			new_letter = 122
		elsif orig == 65
			new_letter = 90
		else				
			new_letter = orig - 1
		end
		letter = new_letter.chr
		decripted_message << letter
	end
	puts decripted_message.join
end

solve_cipher("ifmmp");