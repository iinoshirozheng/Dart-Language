int add([int x = 0]) {
  if (x == 0) {
    throw 'can\'t be 0 ~';
  } else if (x == null) {
    throw new NullThrownError();
  }

  return x + 1;
}

void main(List<String> args) {
  add(1);

  // error catch
  try {
    throw OutOfMemoryError();
  } on OutOfMemoryError {
    print("Out of memory error");
    // rethrow;
  } catch (e) {
    print(e);
  } finally {
    print('end');
  }
}
