import 'dart:ffi';

void main(List<String> args) {
// lists can be null and hold nullable values
  List<String>? nullableList;
  List<String?> listWithNullValues = ['world', null, 'hello'];
  int? nullableInt;

// the ?? operator uses the value on left, if it is null, on the right
  print(nullableList ?? 'sorry!');

// ??= assigns the value if the variable is currently null
  nullableList ??= ['null', 'lists'];
  print(nullableList);

// you can combine both!
  nullableInt ??= 10 ?? 0;
}
