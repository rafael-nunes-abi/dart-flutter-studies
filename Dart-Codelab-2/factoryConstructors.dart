class IntegerHolder {
  IntegerHolder();

  // depending on parameters, the instance returned is different
  factory IntegerHolder.fromList(List<int> list) {
    if (list.length == 1) return IntegerSingle(list[0]);
    if (list.length == 2) return IntegerDouble(list[0], list[1]);
    if (list.length == 3) return IntegerTriple(list[0], list[1], list[2]);
    throw ArgumentError('Unrecognized $list');
  }
}

class IntegerSingle extends IntegerHolder {
  final int a;
  IntegerSingle(this.a);
}

class IntegerDouble extends IntegerHolder {
  final int a;
  final int b;
  IntegerDouble(this.a, this.b);
}

class IntegerTriple extends IntegerHolder {
  final int a;
  final int b;
  final int c;
  IntegerTriple(this.a, this.b, this.c);
}
