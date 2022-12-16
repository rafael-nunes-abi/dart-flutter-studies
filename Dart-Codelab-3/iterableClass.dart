// Iterable is the class that List and Set implements

// using the iterable class directly isnt usual, but can be done

void main() {
  const iterable = ['Salad', 'Popcorn', 'Toast'];
  // iterable runs the entire object to find what you need
  for (final element in iterable) {
    print(element);
  }

  bool predicate(String item) {
    return item.length > 5;
  }

  const items = ['Salad', 'Popcorn', 'Toast', 'Lasagne'];

// firstWhere is a common function from Iterable

  // You can find with a simple expression:
  var foundItem1 = items.firstWhere((item) => item.length > 5);
  print(foundItem1);

  // Or try using a function block:
  var foundItem2 = items.firstWhere((item) {
    return item.length > 5;
  });
  print(foundItem2);

  // Or even pass in a function reference:
  var foundItem3 = items.firstWhere(predicate);
  print(foundItem3);

  // You can also use an `orElse` function in case no value is found!
  var foundItem4 = items.firstWhere(
    (item) => item.length > 10,
    orElse: () => 'None!',
  );
  print(foundItem4);

// make singleWhere return true if the element contains 'a' and starts with 'M'
  String singleWhere(Iterable<String> items) {
    return items
        .singleWhere((item) => item.contains('a') && item.startsWith('M'));
  }
}
