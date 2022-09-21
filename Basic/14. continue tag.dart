void main(List<String> args) {
  String name = 'close';
  switch (name) {
    case 'open':
      print('open');
      break;

    case 'close':
      print('close');
      continue doClose;
    doClose: // tag close
    case 'doClose':
      print('do close');
      break;
    default:
      print('not fond');
  }
}
