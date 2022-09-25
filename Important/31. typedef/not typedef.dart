// sort class

class SortedCollection {
  Function compare;

  SortedCollection(int function(Object a, Object b)) {
    compare = function;
  }
}

// sort methods
int sort(Object a, Object b) => 0;

void main(List<String> args) {
  SortedCollection collection = new SortedCollection(sort);

  print(collection.compare is Function);
}
