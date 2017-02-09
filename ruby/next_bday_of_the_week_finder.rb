#next_bday_of_the_week_finder
# Next birth-day of the week finder
# Can you find after how many years will a person's birthday fall on the same day of the week that he was born?

# For example, Joy's birthday is on 16th October, 1990 which falls on Friday. After how many years will his birthday fall on Friday again? (That would be 11 years)

# next_birthday_of_the_week(Date.new(1990, 10, 16)) # 11
# next_birthday_of_the_week(Date.new(2012, 5, 20))  # 6
# next_birthday_of_the_week(Date.new(1975, 2, 22))  # 5

require 'date'
def next_birthday_of_the_week(birthday)
  beginyear = birthday.year
  beginwday = birthday.wday
# puts "#{beginwday}"
  while beginwday != (birthday>>12).wday
#  puts "#{birthday.wday} "
  birthday = birthday>>12
  end
birthday.year-beginyear+1
#  [birthday.year, birthday.mon, birthday.mday, birthday.wday].map
 
end