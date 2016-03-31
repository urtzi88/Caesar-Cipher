def solve_cipher(input)
	message = []
	message = input.split(//)
	shift = -3
	decripted_message = []
	for letter in message
		orig = letter.ord
		if orig == 32
			new_letter = orig
		else
			if (orig + shift) < 97 && orig < 122 && orig > 97
				new_letter = 122 - (orig + shift - 97)
			elsif (orig + shift) < 65 && orig < 90 && orig > 65
				new_letter = 90 - (orig + shift - 65)
			else
				new_letter = orig + shift
			end
		end
		letter = new_letter.chr
		decripted_message << letter
	end
	puts decripted_message.join
end

solve_cipher("p| uhdo qdph lv grqdog gxfn")