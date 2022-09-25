// define metadata class

import 'dart:mirrors';

class TODO {
  final String who;
  final String what;
  const TODO(this.who, this.what);
}

// use metadata
@TODO('Ray', 'metadata learning~')
void doSomething() {
  print("running do something");
}

void main(List<String> args) {
  currentMirrorSystem().libraries.forEach((uri, lib) {
    // print('lib: ${uri}');
    lib.declarations.forEach((s, decl) {
      // print('decl: ${s}');
      decl.metadata.where((m) => m.reflectee is TODO).forEach((m) {
        var anno = m.reflectee as TODO;
        if (decl is MethodMirror) {
          print('Todo(${anno.who}, ${anno.what})');
          ((decl as MethodMirror).owner as LibraryMirror).invoke(s, []);
        }
        ;
      });
    });
  });
}
