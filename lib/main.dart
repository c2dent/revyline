import 'package:flutter/material.dart';
import 'package:revyline/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Revyline',
      theme: ThemeData(
        fontFamily: 'Montserrat',
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromRGBO(59, 183, 233, 1),
          primary: const Color.fromRGBO(59, 183, 233, 1),
        ),
        scaffoldBackgroundColor: const Color.fromRGBO(225, 240, 246, 1),
        textTheme: const TextTheme(
          titleMedium: TextStyle(
            fontFamily: 'Montserrat',
            fontSize: 14,
            fontWeight: FontWeight.w700,
            color: Color.fromRGBO(90, 89, 88, 1),
          ),
          titleSmall: TextStyle(
            fontFamily: 'Montserrat',
            fontSize: 10,
            fontWeight: FontWeight.w400,
            color: Color.fromRGBO(153, 153, 153, 1),
            height: 1.219,
          ),
        ),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}
