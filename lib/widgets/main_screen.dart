import 'package:flutter/material.dart';
import 'package:flutter_weather/widgets/detail_screen/detail_screen_widget.dart';
import 'package:flutter_weather/widgets/home_screen/home_screen_widget.dart';
import 'package:flutter_weather/widgets/search_screen/search_screen_widget.dart';
import 'package:flutter_weather/widgets/settings_screen/settings_screen_widget.dart';

class MainScreenWidget extends StatefulWidget {
  const MainScreenWidget({Key? key}) : super(key: key);

  @override
  _MainScreenWidget createState() => _MainScreenWidget();
}

class _MainScreenWidget extends State<MainScreenWidget> {
  int _selectedTab = 0;

  static const List<Widget> _widgetOption = <Widget>[
    HomeWidget(),
    DetailScreenWidget(),
    SearchScreenWidget(),
    SettingsScreenWidget(),
  ];

  void onSelectTab(int index) {
    if (_selectedTab == index) return;
    setState(() {
      _selectedTab = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF0F0F0),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: _widgetOption[_selectedTab],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12),
        child: BottomNavigationBar(
          currentIndex: _selectedTab,
          iconSize: 25,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Главная',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.calendar_month_rounded),
              label: 'Детали',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Поиск',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Настройки',
            ),
          ],
          onTap: onSelectTab,
        ),
      ),
    );
  }
}