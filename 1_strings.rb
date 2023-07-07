# 2.3 Substituting Variables into an Existing String
template = 'Oceania has always been at war with %s.'
template % 'Eurasia'# => "Oceania has always been at war with Eurasia."
template % 'Eastasia'# => "Oceania has always been at war with Eastasia."
'To 2 decimal places: %.2f' % Math::PI       # => "To 2 decimal places: 3.14"
"Zero-padded: %.5d" % Math::PI               # => "Zero-padded: 00003"


# 2.9 Processing a String One Word at a Time
class String
  def word_count
    frequencies = Hash.new(0)    
    downcase.scan(/\w+/) { |word| frequencies[word] += 1 }
    return frequencies
  end
end

%{Dogs dogs dog dog dogs.}.word_count # => {"dogs"=>3, "dog"=>2}
%{"I have no shame," I said.}.word_count # => {"i"=>2, "have"=>1, "no"=>1, "shame"=>1, "said"=>1}


# 2.10 Changing the Case of a String
s = 'HELLO, I am not here. I WENT to tHe MaRKEt.'
s.upcase# => "HELLO, I AM NOT HERE. I WENT TO THE MARKET."
s.downcase# => "hello, i am not here. i went to the market."
s.swapcase# => "hello, i AM NOT HERE. i went TO ThE mArkeT."
s.capitalize# => "Hello, i am not here. i went to the market."
'LOWERCASE ALL VOWELS'.tr('AEIOU', 'aeiou') # => "LoWeRCaSe aLL VoWeLS"
'Swap case of ALL VOWELS'.tr('AEIOUaeiou', 'aeiouAEIOU') # => "SwAp cAsE Of aLL VoWeLS"


# 2.16 Matching Strings with Regular Expressions
string = "123"
case string
when /^[a-zA-Z]+$/  
  "Letters"
when /^[0-9]+$/  
  "Numbers"
else  
  "Mixed"
end
# => "Numbers"
