import 'package:flutter/material.dart';
import 'package:flutter_weather/modules/search/ui/screens/city_details.dart';
import 'package:flutter_weather/modules/details/ui/screens/detail_screen.dart';
import 'package:flutter_weather/modules/home/ui/screens/home_screen.dart';
import 'package:flutter_weather/modules/navigation.dart';

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
        '/home': (context) => HomeScreen(),
        '/detail': (context) => DetailScreenWidget(),
        '/search/city_details': (context) {
          final arguments = ModalRoute.of(context)?.settings.arguments;

          if (arguments is int) {
            return CityDetailsWidget(cityId: arguments);
          } else {
            return CityDetailsWidget(cityId: 0);
          }
        }
      },
      initialRoute: '/main',
      onGenerateRoute: (settings) {
        return MaterialPageRoute<void>(
            builder: (context) => MainScreenWidget());
      },
    );
  }
}
