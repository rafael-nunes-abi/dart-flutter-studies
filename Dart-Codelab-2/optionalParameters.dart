// parameters can be optional if they are in [] and are the last
// if no default value is set, need to be null
int sumIt(int a, [int? b, int? c]) {
  int sum = a;
  if (b != null) sum += b;
  if (c != null) sum += c;
  return sum;
}

void main(List<String> args) {
  sumIt(10, 4);
  sumIt(10, 5, 4);
}
