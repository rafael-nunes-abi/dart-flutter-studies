/*
Traditional way
var button = querySelector('#confirm');
button?.text = 'Confirm';
button?.classes.add('important');
button?.onClick.listen((e) => window.alert('Confirmed!'));
button?.scrollIntoView();

Cascade way
querySelector('#confirm')
  ?..text = 'Confirm'
  ..classes.add('important')
  ..onClick.listen((e) => window.alert('Confirmed!'))
  ..scrollIntoView()
*/

class BigObject {
  int anInt = 0;
  String aString = '';
  List<double> aList = [];
  bool _done = false;

  void allDone() {
    _done = true;
  }
}

BigObject fillBigObject(BigObject obj) {
  // Create a single statement that will update and return obj:
  return obj
    ?..anInt = 1
    ..aString = 'String!'
    ..aList = [3.0]
    ..allDone();
}
