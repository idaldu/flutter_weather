import 'package:flutter/material.dart';
import 'package:flutter_weather/modules/home/ui/widgets/main_weather_widget.dart';
import 'package:flutter_weather/modules/home/ui/widgets/more_info_widget.dart';
import 'package:flutter_weather/modules/home/ui/widgets/slider_controller_widget.dart';
import 'package:flutter_weather/modules/home/ui/widgets/sunrise_sunser_widget.dart';
import 'package:flutter_weather/theme/app_color.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundApp,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        padding: EdgeInsets.only(top: 20),
        child: ListView(
          children: [
            SliderControllerWidget(),
            SizedBox(height: 24),
            MainWeatherWidget(
              city: 'Bishkek',
              temp: '30',
            ),
            SizedBox(height: 32),
            MoreInfoWidget(),
            SizedBox(height: 16),
            SunriseSunsetWigdet(),
            SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
