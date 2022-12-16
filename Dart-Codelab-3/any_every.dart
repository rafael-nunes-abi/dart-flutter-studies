void main() {
  const items = ['Salad', 'Popcorn', 'Toast'];

// any verify if at least one element satisfy condition
  if (items.any((element) => element.contains('a'))) {
    print("It contains 'a'");
  } else {
    print("It does not contains any 'a'");
  }

// every verify if all elements satisfy condition
  if (items.every((element) => element.length > 3)) {
    print("Elements lenght > 3");
  } else {
    print("At least one element have lenght < 3");
  }

// any is useful to check if no element in object satisfies condition
  if (!items.any((element) => element.startsWith('X'))) {
    print("No element starts with 'X'");
  }

// CHALLENGE -> any and every will return a bool, so no if is necessary

  bool anyUserUnder18(Iterable<User> users) {
    return users.any((user) => user.age <= 17);
  }

  bool everyUserOver13(Iterable<User> users) {
    return users.every((user) => user.age >= 14);
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
