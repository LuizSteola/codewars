# Write a function that takes an integer as input, and returns the number of bits that are equal to one in the binary representation of that number. You can guarantee that input is non-negative.

# Example: The binary representation of 1234 is 10011010010, so the function should return 5 in this case

#My solution (in partnership with @marepifanio during the lunch)
def count_bits(n):
  x = format(n, 'b')
  print(x)
  
  answer = 0
  
  for i in x:
    if i == "1":
      answer += 1

  return(answer)

def solution(n):

 return(bin(n).count('1'))