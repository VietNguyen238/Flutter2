class Student {
  String id;
  ContactInfo contactInfo;
  List<String> registeredCourses;
  double averageScore;
  int dateOfBirth;
  String classCode;
  String fullName;

  Student({
    required this.id,
    required this.contactInfo,
    required this.registeredCourses,
    required this.averageScore,
    required this.dateOfBirth,
    required this.classCode,
    required this.fullName,
  });

  factory Student.fromJson(Map<String, dynamic> json) {
    return Student(
      id: json['_id'],
      contactInfo: ContactInfo.fromJson(json['contactInfo']),
      registeredCourses: List<String>.from(json['registeredCourses']),
      averageScore: json['averageScore'].toDouble(),
      dateOfBirth: json['dateOfBirth'],
      classCode: json['class'],
      fullName: json['fullName'],
    );
  }
}

class ContactInfo {
  String address;
  String email;
  String phoneNumber;
  String id;

  ContactInfo({
    required this.address,
    required this.email,
    required this.phoneNumber,
    required this.id,
  });

  factory ContactInfo.fromJson(Map<String, dynamic> json) {
    return ContactInfo(
      address: json['address'],
      email: json['email'],
      phoneNumber: json['phoneNumber'],
      id: json['_id'],
    );
  }
}
