import 'dart:core';
import 'dart:mirrors';

enum Status { none, running, stopped, paused }

void main(List<String> args) {
  // Symbol
  Symbol libName = Symbol('dart.core');
  MirrorSystem mirrorSystem = currentMirrorSystem();
  LibraryMirror libraryMirror = mirrorSystem.findLibrary(libName);
  libraryMirror.declarations.forEach((key, value) => print('$key - $value'));

  // enum
  var a = Status.running;
  if (a == Status.running) {
    print('Running');
  }

  // comments //
  /* 
  1
  
  2


  3
  */
}
