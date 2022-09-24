import './my class.dart';
import './my same class.dart' as samePhone;
import './my class.dart' show AndroidPhone; // just import this class
import './my class.dart' hide AndroidPhone; // hide class
import './my class.dart' deferred as deferredLib;

main(List<String> args) async {
  var android = Phone('android');
  android.run();

  var ios = Phone('ios');
  ios.run();

  var ios_sameClass = samePhone.IOSPhone();
  ios_sameClass.run();

  var show_oneClass = AndroidPhone();
  show_oneClass.run();

  var run = true;
  if (run) {
    await deferredLib.loadLibrary();
    var p = Phone('ios');
    p.run();
  }
}
