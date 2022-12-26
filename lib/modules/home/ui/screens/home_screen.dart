import 'package:flutter/material.dart';
import 'package:flutter_weather/modules/home/ui/widgets/main_weather_widget.dart';
import 'package:flutter_weather/modules/home/ui/widgets/more_info_widget.dart';
import 'package:flutter_weather/modules/home/ui/widgets/sunrise_sunser_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      padding: EdgeInsets.only(top: 25),
      child: ListView(
        children: [
          SliderControllerWidget(),
          SizedBox(height: 50),
          MainWeatherWidget(),
          SizedBox(height: 25),
          MoreInfoWidget(),
          SizedBox(height: 25),
          SunriseSunsetWigdet(),
          SizedBox(height: 25),
        ],
      ),
      );
  }
}