void main(List<String> args) {
  var birthday = DateTime(1996, 11, 5);
  print(birthday);

  final nowTime = DateTime.now();
  print(nowTime);

  var utc = DateTime.utc(2018, 11, 5);
  print(utc);

  //ISO 8601
  var isoTime = DateTime.parse('2022-2-2 09:30:00');

  // time + -
  var time_1 = DateTime.now();
  time_1.add(Duration(minutes: -5));

  var t_1 = DateTime(2018, 1, 1);
  var t_2 = DateTime.now();
  t_1.isAfter(t_2);
  t_1.isBefore(t_2);
  t_1.isAtSameMomentAs(t_2);
  var diff = t_1.difference(t_2);
  print([diff.inSeconds, diff.inMinutes, diff.inHours]);

  // time stamp
  var now = DateTime.now();
  print(now.millisecondsSinceEpoch);
  print(now.microsecondsSinceEpoch);
}
