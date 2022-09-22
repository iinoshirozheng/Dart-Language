class Point {
  num x = 0;
  num y = 0;
  var initNum;
  // Point(int x, int y) {
  //   this.x = x;
  //   this.y = y;
  // }

  Point(this.x, this.y) : initNum = x + y;

  Point.fromJSON(Map json) {
    this.x = json['x'];
    this.y = json['y'];
  }

  // same with upon
  Point.fromXML(Map json) : this(json['x'], json['y']);
}

void main(List<String> args) {
  var p = Point(11, 22);
  print([p.x, p.y]);

  // init from Map
  Map myJson = {'x': 12, 'y': 24};
  var myPoint = Point.fromJSON(myJson);
  print([myPoint.x, myPoint.y]);

  Map myXML = {'x': 67567, 'y': 43};
  var myPoint2 = Point.fromXML(myXML);
  print([myPoint2.x, myPoint2.y]);
}
