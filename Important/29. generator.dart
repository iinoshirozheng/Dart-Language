import 'dart:async';

// Synchronize generator
Iterable<int> naturalsTo(int n) sync* {
  print('start');
  int k = 0;
  while (k < n) {
    yield k++;
  }
  print('end');
}

// Asynchronous generator
Stream<int> asynchronousNaturalsTo(int n) async* {
  print('start');
  int k = 0;
  while (k < n) {
    yield k++;
  }
  print('end');
}

// Recursive generator
Iterable<int> recursiveNaturalsTo(int n) sync* {
  print('start');
  if (n > 0) {
    yield n;
    yield* recursiveNaturalsTo(n - 1);
  }
  print('end');
}

main() {
  var iter = naturalsTo(5).iterator;
  while (iter.moveNext()) {
    print(iter.current);
  }
  asynchronousNaturalsTo(5).listen((data) => print(data));
  StreamSubscription subscription = asynchronousNaturalsTo(5).listen(null);
  subscription.onData((data) => print(data));

  var recursiveIter = recursiveNaturalsTo(5).iterator;
  while (recursiveIter.moveNext()) {
    print(recursiveIter.current);
  }
}
