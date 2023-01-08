/*DESCRIPTION:
Create a function that takes an integer as an argument and returns "Even" for even numbers or "Odd" for odd numbers.
*/

//My solution

function even_or_odd(number) {
  var answer = (number % 2) == 0 ? "Even" : "Odd";
  return answer;
}