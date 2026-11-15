class StudentModel {

  final int id;
  final String name;
  final String department;
  final double cgpa;

  StudentModel({
    required this.id,
    required this.name,
    required this.department,
    required this.cgpa,
  });

  @override
  String toString() {
    return "ID: $id , name: $name, dis: $department , CGPA: $cgpa ";
  }
}
