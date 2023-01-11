# Complete the solution so that it reverses the string passed into it.

# 'world'  =>  'dlrow'
# 'word'   =>  'drow'

#My solution (in partnership with @marepifanio durin the lunch)
def solution(string):
  z = string[::-1]
  answer = "".join(z)  
  return(answer)