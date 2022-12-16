// if a constructor has a final field, it need to be initialized

class FirstTwoLetters {
  final String letterOne;
  final String letterTwo;

  // Create a constructor with an initializer list here:
  FirstTwoLetters(String word)
      : letterOne = word[0],
        letterTwo = word[1],
        assert(word.length > 2);
}

void main(List<String> args) {
  FirstTwoLetters dart = FirstTwoLetters("Dart");
  print(dart.letterOne);
  print(dart.letterTwo);
}
