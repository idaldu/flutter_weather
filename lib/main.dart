import 'package:flutter/material.dart';
import 'package:flutter_weather/widgets/detail_screen/detail_screen_widget.dart';
import 'package:flutter_weather/widgets/home_screen/home_screen_widget.dart';
import 'package:flutter_weather/widgets/main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'flutter_weather',
      theme: ThemeData(
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          backgroundColor: Color(0xFFF0F0F0),
          elevation: 0,
          selectedItemColor: Color(0xFF474747),
          unselectedItemColor: Color(0xFFA7A7A7),
        ),
      ),
      routes: {
        '/main': (context) => MainScreenWidget(),
        '/home': (context) => HomeWidget(),
        '/detail': (context) => DetailScreenWidget(),
      },
      initialRoute: '/main',
      onGenerateRoute: (settings) {
        return MaterialPageRoute<void>(
            builder: (context) => MainScreenWidget());
      },
    );
  }
}
