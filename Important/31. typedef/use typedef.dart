// define typedef
typedef int Compare(Object a, Object b);

// define sort class
class SortedCollection {
  Compare compare;
  SortedCollection(this.compare);
}

// define sort methods
int sort(Object a, Object b) => 0;

void main(List<String> args) {
  SortedCollection collection = SortedCollection(sort);

  print(collection.compare is Function);
  print(collection.compare is Compare);
}
