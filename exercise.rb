def solve_cipher(input, shift)
	message = []
	message = input.split(//)
	decripted_message = []
	for letter in message
		orig = letter.ord
		if orig == 32
			new_letter = orig
		else
			if shift > 0
				if (orig + shift) > 122 && orig < 122 && orig > 97
					new_letter = 97 + (orig - shift - 122)
				elsif (orig + shift) > 90 && orig < 90 && orig > 65
					new_letter = 65 + (orig - shift - 90)
				else
					new_letter = orig + shift
				end
			elsif shift < 0
				if (orig + shift) < 97 && orig < 122 && orig > 97
					new_letter = 122 - (orig + shift - 97)
				elsif (orig + shift) < 65 && orig < 90 && orig > 65
					new_letter = 90 - (orig + shift - 65)
				else
					new_letter = orig + shift
				end
			else
				new_letter = oring
			end
		end
		letter = new_letter.chr
		decripted_message << letter
	end
	puts decripted_message.join
end

#solve_cipher("ifmmp");
solve_cipher("p| uhdo qdph lv grqdog gxfn", -3)