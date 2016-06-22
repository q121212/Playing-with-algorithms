#wordify_an_integer

# Turn a given number (an integer > 0, < 1000) into the equivalent English words. For the purposes of this kata, no hyphen is needed in numbers 21-99.

# Examples:

# wordify(1) == "one"
# wordify(12) == "twelve"
# wordify(17) == "seventeen"
# wordify(56) == "fifty six"
# wordify(90) == "ninety"
# wordify(326) == "three hundred twenty six"

def wordify(n)
hash19={ one:1, two:2, three: 3, four: 4, five: 5, six: 6, seven: 7, eight: 8, nine: 9 }
hash1119={ eleven:11, twelve: 12, thirteen: 13, fourteen: 14, fifteen: 15, sixteen: 16, seventeen: 17, eighteen: 18, nineteen: 19 }
hash1090={ ten: 10, twenty: 20, thirty: 30, forty: 40, fifty: 50, sixty: 60, seventy: 70, eighty: 80, ninety: 90 }
hash199=hash19.merge(hash1119)
hash199=hash199.merge(hash1090)
hashremain={ 'twenty one'=> 21,
 'twenty two'=> 22, 
 'twenty three'=> 23,
 'twenty four'=> 24,
 'twenty five'=> 25,
 'twenty six'=> 26,
 'twenty seven'=> 27,
 'twenty eight'=> 28,
 'twenty nine'=> 29,
 'thirty one'=> 31,
 'thirty two'=> 32,
 'thirty three'=> 33,
 'thirty four'=> 34,
 'thirty five'=> 35,
 'thirty six'=> 36,
 'thirty seven'=> 37,
 'thirty eight'=> 38,
 'thirty nine'=> 39,
 'forty one'=> 41,
 'forty two'=> 42,
 'forty three'=> 43,
 'forty four'=> 44,
 'forty five'=> 45,
 'forty six'=> 46,
 'forty seven'=> 47,
 'forty eight'=> 48,
 'forty nine'=> 49,
 'fifty one'=> 51,
 'fifty two'=> 52,
 'fifty three'=> 53,
 'fifty four'=> 54,
 'fifty five'=> 55,
 'fifty six'=> 56,
 'fifty seven'=> 57,
 'fifty eight'=> 58,
 'fifty nine'=> 59,
 'sixty one'=> 61,
 'sixty two'=> 62,
 'sixty three'=> 63,
 'sixty four'=> 64,
 'sixty five'=> 65,
 'sixty six'=> 66,
 'sixty seven'=> 67,
 'sixty eight'=> 68,
 'sixty nine'=> 69,
 'seventy one'=> 71,
 'seventy two'=> 72,
 'seventy three'=> 73,
 'seventy four'=> 74,
 'seventy five'=> 75,
 'seventy six'=> 76,
 'seventy seven'=> 77,
 'seventy eight'=> 78,
 'seventy nine'=> 79,
 'eighty one'=> 81,
 'eighty two'=> 82,
 'eighty three'=> 83,
 'eighty four'=> 84,
 'eighty five'=> 85,
 'eighty six'=> 86,
 'eighty seven'=> 87,
 'eighty eight'=> 88,
 'eighty nine'=> 89,
 'ninety one'=> 91,
 'ninety two'=> 92,
 'ninety three'=> 93,
 'ninety four'=> 94,
 'ninety five'=> 95,
 'ninety six'=> 96,
 'ninety seven'=> 97,
 'ninety eight'=> 98,
 'ninety nine'=> 99 }
hash199=hash199.merge(hashremain)

if n == (100 || 200 || 300 || 400 || 500 || 600 || 700 || 800 || 900)
 hash19.invert[(n.to_s.split(//)[0]).to_i].to_s + ' hundred' 
elsif n.to_s.split(//).size == 3
 hash19.invert[(n.to_s.split(//)[0]).to_i].to_s + ' hundred ' + hash199.invert[(n.to_s.split(//)[1]+n.to_s.split(//)[2]).to_i].to_s
elsif n.to_s.split(//).size == 2 || n.to_s.split(//).size == 1
 hash199.invert[n].to_s
end
end