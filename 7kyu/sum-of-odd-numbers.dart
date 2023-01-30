/*Given the triangle of consecutive odd numbers:

             1
          3     5
       7     9    11
   13    15    17    19
21    23    25    27    29
...
Calculate the sum of the numbers in the nth row of this triangle (starting at index 1) e.g.: (Input --> Output)

1 -->  1
2 --> 3 + 5 = 8*/

//My solutions
import "dart:math";

int rowSumOddNumbers1(int n) {
  return pow(n, 3);
}


int rowSumOddNumbers(int n) {
  int first = 0;
  int last = 1;
  int answer = 0;
  
  //determine the ends of the line
  for(int i = 1; i <= n; i++){ 
    if(i == 1){
      last = 1;
      answer = last;
      print(answer);
    }else{
      answer = 0;
      first = last + 2;
      last = 2*i + last;       
    }    
  }

  //makes the sum of the odds
  while(first <= last){
          answer = answer + (first);
          first += 2;
  }

  return answer;
}