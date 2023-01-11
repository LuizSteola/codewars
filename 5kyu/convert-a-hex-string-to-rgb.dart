/*When working with color values it can sometimes be useful to extract the individual red, green, and blue (RGB) component values for a color. Implement a function that meets these requirements:

Accepts a case-insensitive hexadecimal color string as its parameter (ex. "#FF9933" or "#ff9933")
Returns a Map<String, int> with the structure {r: 255, g: 153, b: 51} where r, g, and b range from 0 through 255
Note: your implementation does not need to support the shorthand form of hexadecimal notation (ie "#FFF")

Example
"#FF9933" --> {r: 255, g: 153, b: 51}*/

//My solution
Map<String, int> hexToRGB(String hex) {
  List hexList = hex.split('');
  String red = hexList.getRange(1,3).join('');
  String green = hexList.getRange(3,5).join('');
  String blue = hexList.getRange(5,7).join('');
  Map<String,int> colors = {"r": int.parse(red, radix:16),
                           "g": int.parse(green, radix:16),
                           "b": int.parse(blue, radix:16)};
  return colors;
}