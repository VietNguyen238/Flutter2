import 'package:b1/models/Student.dart';
import 'package:b1/services/repository.dart';

class StudentController {
  final Repository _repository;
  StudentController(this._repository);

  // get
  Future<List<Student>> fetchStudentList() async {
    return _repository.getStudentList();
  }

  // delete
  Future<String> deleteStudent(Student student) async {
    return _repository.deleteStudent(student);
  }
}
