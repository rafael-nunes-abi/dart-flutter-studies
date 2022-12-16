// this is a shortcut for constructors
class MyColor {
  int red;
  int green;
  int blue;

  MyColor(this.red, this.green, this.blue);
}

final color = MyColor(80, 80, 128);

// required parameters cannot be null
class MyNumbers {
  int odd;
  int even;
  int luckyNumber;

  MyNumbers({required this.odd, required this.even, this.luckyNumber = 28});
}

final number = MyNumbers(odd: 8, even: 11);
