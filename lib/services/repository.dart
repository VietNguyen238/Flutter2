import 'package:b1/models/Student.dart';

abstract class Repository {
  Future<List<Student>> getStudentList();
  Future<String> patchCompleted(Student student);
  Future<String> putCompleted(Student student);
  Future<String> deleteStudent(Student student);
  Future<String> postStudent(Student student);
}
