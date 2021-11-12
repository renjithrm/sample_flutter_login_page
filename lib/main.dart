import 'package:flutter/material.dart';
import 'package:login_page/screens/first_screen.dart';
import 'package:login_page/screens/login_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  SharedPreferences prefs = await SharedPreferences.getInstance();
  var password = await prefs.getString('Password');
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: await password == null ? LoginScreen() : MainFirstPage(),
  ));
}
