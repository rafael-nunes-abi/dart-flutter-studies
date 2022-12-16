void main(List<String> args) {
  const prices = [10.50, 55.09, 5.20, 34.55];

// operates over each element and return a new iterable after predicate
  var discount = prices.map((e) => e * 0.8);
  print(discount);

  var stringfyIt = prices.map((e) => e.toString());
  print(stringfyIt);

// CHALLENGE -> return a iterable with strings as name is age
  Iterable<String> getNameAndAges(Iterable<User> users) {
    return users.map((user) => "${user.name} is ${user.age.toString()}");
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
