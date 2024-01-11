import 'package:b1/pages/EditStudent/index.dart';
import 'package:b1/pages/listStudent/index.dart';
import 'package:b1/utils/main_page.dart';

class AppRouter {
  static final pages = {
    '/listStudent': (context) => const ListStudent(),
    '/mainPage': (content) => const MainPage(),
    '/editStudent': (content) => const EditStudent(),
  };
  static const listStudent = '/listStudent';
  static const editStudent = '/editStudent';
  static const mainPage = '/mainPage';
}
