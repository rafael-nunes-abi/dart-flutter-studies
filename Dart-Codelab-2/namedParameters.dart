// named parameters can be explictly called when instanciating

void printName(String firstName, String lastName, {String? middleName}) {
  print('$firstName ${middleName ?? ''} $lastName');
}

void main(List<String> args) {
  printName('Dash', 'Dartisan');
  printName('John', 'Smith', middleName: 'Who');
  // Named arguments can be placed anywhere in the argument list
  printName('John', middleName: 'Who', 'Smith');
}

// for some reason this exercise was in this section

class MyDataObject {
  final int anInt;
  final String aString;
  final double aDouble;

// constructor
  MyDataObject({
    this.anInt = 1,
    this.aString = 'Old!',
    this.aDouble = 2.0,
  });

// this method creates a new instance with parameter values or, if any is null, the previous one
  MyDataObject copyWith(int? newInt, String? newString, double? newDouble) {
    return MyDataObject(
        anInt: newInt ?? this.anInt,
        aString: newString ?? this.aString,
        aDouble: newDouble ?? this.aDouble);
  }
}
