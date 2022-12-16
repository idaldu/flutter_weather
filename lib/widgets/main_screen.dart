import 'package:flutter/material.dart';
import 'package:flutter_weather/icon/app_icons.dart';
import 'package:flutter_weather/widgets/detail_screen/detail_screen_widget.dart';
import 'package:flutter_weather/widgets/home_screen/home_screen_widget.dart';
import 'package:flutter_weather/widgets/search_screen/search_screen_widget.dart';

class MainScreenWidget extends StatefulWidget {
  const MainScreenWidget({Key? key}) : super(key: key);

  @override
  _MainScreenWidget createState() => _MainScreenWidget();
}

class _MainScreenWidget extends State<MainScreenWidget> {
  int _selectedTab = 0;


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
      body: IndexedStack(index: _selectedTab, children: [
        HomeWidget(),
        SearchScreenWidget(),
        DetailScreenWidget(),
      ]),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50),
        child: BottomNavigationBar(
          selectedLabelStyle: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 12,
          ),
          currentIndex: _selectedTab,
          iconSize: 25,
          items: [
            BottomNavigationBarItem(
              icon: Icon(AppIcons.home_icon),
              label: 'Главная',
            ),
            BottomNavigationBarItem(
              icon: Icon(AppIcons.search_icon),
              label: 'Поиск',
            ),
            BottomNavigationBarItem(
              icon: Icon(AppIcons.details_icon),
              label: 'Детали',
            ),
          ],
          onTap: onSelectTab,
        ),
      ),
    );
  }
}
