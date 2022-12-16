//nullable variable
String? name = 'Jane';
String? address = null;

//null-aware operators
void main(List<String> args) {
  int? a; // <-- means a = null
  int b =
      a ??= 3; // <-- ?? = only assigns a value to a var if it is currently null
  print(b);

// ?? always prints the value on the left, unless it is null
  print(a ?? 3); // <-- 1
  print(5 ?? 10); // <-- 10
}
