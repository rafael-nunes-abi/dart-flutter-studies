class Color {
  int red;
  int green;
  int blue;

  Color(this.red, this.green, this.blue);

  String colorMessage() {
    return 'Color fields are: Red $red, Green $green, Blue $blue';
  }

  // Create a named constructor called "Color.black" here:
  Color.black()
      : red = 0,
        green = 0,
        blue = 0;
}

void main(List<String> args) {
  final myColor = Color(10, 22, 44);
  print(myColor.colorMessage());

  final myColorBlack = Color.black();
  print(myColorBlack.colorMessage());
}
