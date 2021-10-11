import 'package:flutter/widgets.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeController {
  var currentPage = 0;

  void setPage(int index) {
    currentPage = index;
  }

  void logout(BuildContext context) async {
    try {
      final instance = await SharedPreferences.getInstance();
      await instance.clear();
      Navigator.pushNamedAndRemoveUntil(context, '/login', (route) => false);
    } catch (e) {
      print(e);
    }
  }
}
