void main(List<String> args) {
  const ages = [20, 60, -44, 0, 33, 19];

// where returns another iterable with elements that satisfy condition
//if any satisfy, returns an empty iterable
  var evenNumbers = ages.where((age) => age.isEven);
  print(evenNumbers);

// returns every value until the condition
  var untilZero = ages.takeWhile((age) => age != 0);
  print(untilZero);

//returns every value after condition, including it
  var afterZero = ages.skipWhile((age) => age != 0);
  print(afterZero);

// CHALLENGE
  Iterable<User> filterOutUnder21(Iterable<User> users) {
    return users.where((user) => user.age >= 21);
  }

  Iterable<User> findShortNamed(Iterable<User> users) {
    return users.where((user) => user.name.length <= 3);
  }
}

class User {
  String name;
  int age;

  User(
    this.name,
    this.age,
  );
}
