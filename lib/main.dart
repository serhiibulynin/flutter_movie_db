import 'package:flutter/material.dart';
import 'package:themovie_db/widgets/auth/auth_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Movie db',
      theme: ThemeData(
          appBarTheme: AppBarTheme(
        backgroundColor: Color.fromRGBO(3, 37, 65, 1),
      )),
      home: AuthWidget(),
    );
  }
}
