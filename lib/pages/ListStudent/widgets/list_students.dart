import 'package:b1/controller/student_controller.dart';
import 'package:b1/pages/ListStudent/widgets/item_student.dart';
import 'package:b1/services/student_repository.dart';
import 'package:b1/styles/app_colors.dart';
import 'package:b1/styles/app_styles.dart';
import 'package:b1/styles/app_text.dart';
import 'package:flutter/material.dart';

class ListStudents extends StatefulWidget {
  const ListStudents({super.key});

  @override
  State<ListStudents> createState() => _ListStudentsState();
}

class _ListStudentsState extends State<ListStudents> {
  @override
  Widget build(BuildContext context) {
    var studentController = StudentController(StudentRepository());
    return Column(
      children: [
        Padding(
          padding: AppStyles.paddingPage,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'List students',
                style: AppText.largeBold.copyWith(color: AppColors.black),
              ),
              GestureDetector(
                child: Row(
                  children: [
                    Text(
                      'View all',
                      style: AppText.small.copyWith(color: AppColors.orange),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        Container(
          height: 300,
          child: FutureBuilder(
            future: studentController.fetchStudentList(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
              if (snapshot.hasError) {
                return const Center(
                  child: Text('Error'),
                );
              }
              return ListView.separated(
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    final student = snapshot.data?[index];
                    return ItemStudent(
                        point: student!.averageScore,
                        email: student.contactInfo.email,
                        name: student.fullName);
                  },
                  separatorBuilder: (context, index) {
                    return const SizedBox(
                      height: 10,
                    );
                  },
                  itemCount: snapshot.data?.length ?? 0);
            },
          ),
        )
      ],
    );
  }
}
