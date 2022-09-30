class Model {
  var id;
  var title;
  var subtitle;
  var img;

  Model({this.id, this.title, this.subtitle, this.img});
}

class Model1 {
  int userId;
  int id;
  var title;

  Model1({required this.userId, required this.id, required this.title});

  factory Model1.fromJson(Map<String, dynamic> map) {
    return Model1(userId: map['userId'], id: map['id'], title: map['title']);
  }
}

class Model2 {
  int userId;
  int id;
  var title;

  Model2({required this.userId, required this.id, required this.title});

  factory Model2.fromJson(Map<String, dynamic> map) {
    return Model2(userId: map['userId'], id: map['id'], title: map['title']);
  }
}
