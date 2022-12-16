class Bicycle {
  int cadence;
  int gear;
  int _speed = 0;
  int get speed => _speed;

  Bicycle(this.cadence, this.gear);

  @override
  String toString() => 'Bicycle: $_speed mph';

  void applyBreak(int decrement) {
    _speed -= decrement;
  }

  void speedUp(int increment) {
    _speed += increment;
  }
}

void main() {
  var bike = new Bicycle(2, 1);
  print(bike);
  final mountainBike = Bicycle(1, 1);
  mountainBike.applyBreak(1);
  print(mountainBike);
}
