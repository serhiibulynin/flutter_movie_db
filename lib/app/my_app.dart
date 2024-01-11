import 'package:flutter/material.dart';
import 'package:themovie_db/app/my_app_model.dart';
import 'package:themovie_db/ui/Theme/app_colors.dart';
import 'package:themovie_db/ui/navigation/main_navigation.dart';

class MyApp extends StatelessWidget {
  final MyAppModel model;
  static final mainNavigation = MainNavigation();

  const MyApp({super.key, required this.model});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Movie db',
      theme: ThemeData(
          appBarTheme: const AppBarTheme(
            backgroundColor: AppColors.mainDarkBlue,
          ),
          bottomNavigationBarTheme: const BottomNavigationBarThemeData(
            backgroundColor: AppColors.mainDarkBlue,
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.grey,
          )),
      routes: mainNavigation.routes,
      initialRoute: mainNavigation.initialRoute(model.isAuth),
      onGenerateRoute: mainNavigation.onGenerateRoute,
    );
  }
}
