import 'package:flutter/material.dart';
import 'screens/root_app.dart';
import 'theme/color.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mahasiswa Jurusan Ilmu Komputer',
      theme: ThemeData(
        primaryColor: primary,
      ),
      home: RootApp(),
    );
  }

}