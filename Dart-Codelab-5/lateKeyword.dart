// late is similar to lateinit from kotlin
// the docs says that late can be used as lazy init for expensive non-nullables fields
class Meal {
  late String _description;
  late final _price;

  set description(String desc) {
    _description = 'Mean description: $desc';
  }

  set price(String price) {
    _price = 'No $price needed, it\'s free!!!';
  }

  String get description => _description;

  String get price => _price;
}

void main() {
  final myMeal = Meal();
  myMeal.description = 'Pizza!';
  myMeal.price = '\$59.90';
  print(myMeal.description);
  print(myMeal.price);
}
