#define a method that takes in a number. the method should take the parameter and determine how
#to display it in old roman numberals 
def old_roman_numeral(num)
	@romanNumeral = ""	

	while num > 0
		quotient, modulus = num.divmod(1000)
			if quotient > 0  										#using a divisor 
			@romanNumeral << ("M" * quotient) #using divisor again
			num = modulus												#using modulus
		elsif
			num / 500 >  0
			@romanNumeral << ("D" * (num/500))
			num %= 500
		elsif
			if num / 100 > 0
				@romanNumeral << ("C" * (num/100))
				num %= 100
			elsif 
				num / 90 > 0 
				@romanNumeral << ("XC" * (num/90))
				num %= 90
			end
		elsif
			if num / 50 > 0
			@romanNumeral << ("L" * (num/50))
			num %= 50
			elsif 
				num / 40 > 0
				@romanNumeral << ("XL" * (num/40))
				num %= 40 			
			end
		elsif
			if num / 10 > 0
				@romanNumeral << ("X" * (num/10))
				num %= 10
			elsif
				num / 9 > 0
				@romanNumeral << ("IX" * (num/9))
				num %= 9 
			end
		elsif
			num / 5 > 0
			@romanNumeral << ("V" * (num/5))
			num %= 5
		else
			if
				num / 4 > 0 
				@romanNumeral << ("I" * (num/4))
				num %= 4
			else
				num / 1 > 0 
				@romanNumeral << ("I" * (num/1))
				num %= 1
			end	
		end
	end

	@romanNumeral

end


# puts old_roman_numeral(4)
# puts old_roman_numeral(4) == "IV"
# puts old_roman_numeral(9)
# puts old_roman_numeral(9) == "IX"
# puts old_roman_numeral(30) == "XXX"
# puts old_roman_numeral(33) == "XXXIII"
# puts old_roman_numeral(9) == "IX"
# puts old_roman_numeral(3) == "III"
# puts old_roman_numeral(20) == "XX"
puts old_roman_numeral(1007) == "MVII"
# puts old_roman_numeral(200) == "CC"
# puts old_roman_numeral(300) == "CCC"
# puts old_roman_numeral(3000) == "MMM"
# puts old_roman_numeral(241) == "CCXLI"


