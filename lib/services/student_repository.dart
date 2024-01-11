import 'dart:convert';

import 'package:b1/models/Student.dart';
import 'package:b1/services/repository.dart';
import 'package:http/http.dart' as http;

class StudentRepository implements Repository {
  String dataUrl = 'https://traning.izisoft.io/v1/students';
  @override
  Future<String> deleteStudent(Student student) {
    // TODO: implement deleteStudent
    throw UnimplementedError();
    // var url = Uri.parse('$dataUrl/${student.id}');
    // var result = 'false';
    // await http.delete(url).then((value) {
    //   print(value.body);
    //   return result = 'true';
    // });
    // return result;
  }

  @override
  Future<List<Student>> getStudentList() async {
    List<Student> studentList = [];
    var url = Uri.parse(dataUrl);
    var response = await http.get(url);
    print('status code: ${response.statusCode}');
    var body = json.decode(response.body);
    // parse
    for (var i = 0; i < body.length; i++) {
      studentList.add(Student.fromJson(body[i]));
    }
    return studentList;
  }

  @override
  Future<String> patchCompleted(Student student) async {
    // var url = Uri.parse('$dataUrl/${student.id}');
    // String resData = '';
    // await http.patch(url, body: {
    //   'completed': student.toString(),
    // });
    // return resData;
    // TODO: implement postStudent
    throw UnimplementedError();
  }

  @override
  Future<String> postStudent(Student student) {
    // TODO: implement postStudent
    throw UnimplementedError();
  }

  @override
  Future<String> putCompleted(Student student) {
    // TODO: implement putCompleted
    throw UnimplementedError();
  }
}
