import 'dbhelper.dart';

class Car {
  int id;
  String name;
  int miles;
  String pic;

  Car(this.id, this.name, this.miles, this.pic);

  Car.fromMap(Map<String, dynamic> map) {
    id = map['id'];
    name = map['name'];
    miles = map['miles'];
    pic = map['pic'];
  }

  Map<String, dynamic> toMap() {
    return {
      DatabaseHelper.columnId: id,
      DatabaseHelper.columnName: name,
      DatabaseHelper.columnMiles: miles,
      DatabaseHelper.columnPic: pic,
    };
  }
}
