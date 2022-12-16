class InvalidPriceException {}

class ShoppingCart {
  List<double> _prices = [];

//you can name getters
  double get total => _prices.reduce((v, e) => v + e);

  set prices(List<double> list) {
    if (list.any((element) => element < 0)) {
      throw InvalidPriceException();
    } else {
      _prices = list;
    }
  }
}
