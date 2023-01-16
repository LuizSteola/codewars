/*Take 2 strings s1 and s2 including only letters from a to z. Return a new sorted string, the longest possible, containing distinct letters - each taken only once - coming from s1 or s2.

Examples:
a = "xyaabbbccccdefww"
b = "xxxxyyyyabklmopq"
longest(a, b) -> "abcdefklmopqwxy"

a = "abcdefghijklmnopqrstuvwxyz"
longest(a, a) -> "abcdefghijklmnopqrstuvwxyz"*/

//My solution
String longest(String a, String b) {
  List<String> list = [];
  var testA = a.split('');
  var testB = b.split('');
  
  for(int i = 0; i < testA.length; i++){
    if( list.contains(testA[i]) == false){
      list.add(testA[i]);
    }
  }
  
    for(int i = 0; i < testB.length; i++){
    if( list.contains(testB[i]) == false){
      list.add(testB[i]);
    }
  }

  list.sort((a,b) => a.compareTo(b));

  
   return list.join("");
  
}