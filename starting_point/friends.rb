def get_name(person)
  return person[:name]
end

def get_fav_tv_show(person)
  return person[:favourites][:tv_show]
end

def likes_to_eat(person, food)
  return person[:favourites][:snacks][0] ? true : false
end

def add_friend(person, friend)
  person[:friends].push(friend)
end

def remove_friend(person, friend)
  person[:friends].delete(friend)
end

def total_monies(persons)
  sum = 0
  for person in persons
    sum = sum + person[:monies]
  end
  return sum
end

def loan_value(loaner, lendee, amount)
  loaner[:monies] = loaner[:monies] - amount
  lendee[:monies] = lendee[:monies] + amount
end

def favourite_food(people)
  all_the_food = []
  for person in people
    all_the_food += person[:favourites][:snacks]
  end
  return all_the_food
end

def no_friends(people)
  nigels = []
  for person in people
    nigels.push(person[:name]) if person[:friends].length == 0
  end
  return nigels
end
