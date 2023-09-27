import 'package:flutter/material.dart';
import 'package:islami/core/theme/application_theme.dart';
import 'package:islami/layout/home.dart';
import 'package:islami/moduls/quran/widget/quran_details_view.dart';
import 'package:islami/moduls/splash_screen/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ApplicationTheme.lightTheme,
      darkTheme: ApplicationTheme.darkTheme,
      initialRoute: SplashScreen.routeName,
      routes: {
        SplashScreen.routeName: (context) => SplashScreen(),
        HomeLayout.routeName: (context) => HomeLayout(),
        QuranDetails.routeName: (context) => QuranDetails(),
      }, // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
