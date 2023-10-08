class StudentModel {
  int? id;
  final String name;
  final String classname;
  final String father;
  final String pnumber;
  final String imagex;

  StudentModel(
      {this.id,
      required this.name,
      required this.classname,
      required this.father,
      required this.pnumber,
      required this.imagex});

  static StudentModel fromMap(Map<String, Object?> map) {
    final id = map['id'] as int;
    final name = map['name'] as String;
    final classname = map['classname'] as String;
    final father = map['father'] as String;
    final pnumber = map['pnumber'] as String;
    final imagex = map['imagex'] as String;
    return StudentModel(
        id: id,
        name: name,
        classname: classname,
        father: father,
        pnumber: pnumber,
        imagex: imagex);
  }
}
