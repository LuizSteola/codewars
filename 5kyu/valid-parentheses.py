# Write a function that takes a string of parentheses, and determines if the order of the parentheses is valid. The function should return true if the string is valid, and false if it's invalid.

# Examples
# "()"              =>  true
# ")(()))"          =>  false
# "("               =>  false
# "(())((()())())"  =>  true
# Constraints
# 0 <= input.length <= 100

# Along with opening (() and closing ()) parenthesis, input may contain any valid ASCII characters. Furthermore, the input string may be empty and/or not contain any parentheses at all. Do not treat other forms of brackets as parentheses (e.g. [], {}, <>).

#My solutions
import math
def valid_parentheses1(string):
  x = []

  for i in string:
    if i == "(" or i == ")":
      x.append(i)


  middle = math.ceil(((len(x)-1)/2))

  x1 = x[:middle]
  x2 = x[middle:]
  countOpenStart = 0
  countCloseStart = 0
  countOpenFinal = 0
  countCloseFinal = 0
  
  if len(x) % 2 != 0:
    return False
    
  else:
    count = 0
    for i in x:
      if i == "(":
        count += 1
      elif i == ")":
        count -= 1
        if count < 0:
          return False
          

    for i in x1:
      if i == "(":
        countOpenStart += 1
      elif i == ")":
        countCloseStart += 1
    for i in x2:
      if i == "(":
        countOpenFinal += 1
      elif i == ")":
        countCloseFinal += 1

    if countOpenStart == countCloseFinal and countCloseStart == countOpenFinal:
      return True
    else:
      return False



def valid_parentheses(string):
  count = 0
  for char in string:
      if char == '(': count += 1
      if char == ')': count -= 1
      if count < 0: return False
  return True if count == 0 else False