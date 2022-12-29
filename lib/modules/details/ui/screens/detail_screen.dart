import 'package:flutter/material.dart';
import 'package:flutter_weather/app_image/resources.dart';
import 'package:flutter_weather/icon/app_icons.dart';
import 'package:flutter_weather/modules/home/ui/widgets/circle_stroke_widget.dart';
import 'package:flutter_weather/modules/home/ui/widgets/main_weather_widget.dart';
import 'package:flutter_weather/modules/home/ui/widgets/more_info_widget.dart';
import 'package:flutter_weather/modules/home/ui/widgets/slider_controller_widget.dart';
import 'package:flutter_weather/theme/app_color.dart';

class DetailScreenWidget extends StatefulWidget {
  const DetailScreenWidget({Key? key}) : super(key: key);

  @override
  _DetailScreenWidgetState createState() => _DetailScreenWidgetState();
}

class _DetailScreenWidgetState extends State<DetailScreenWidget> {
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
              temp: '-10',
            ),
            SizedBox(height: 32),
            MoreInfoWidget(),
            SizedBox(height: 16),
            WeekWeatherWidget(),
            SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}

class WeekWeatherWidget extends StatefulWidget {
  const WeekWeatherWidget({Key? key}) : super(key: key);

  @override
  _WeekWeatherWidget createState() => _WeekWeatherWidget();
}

class _WeekWeatherWidget extends State<WeekWeatherWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 24),
        decoration: BoxDecoration(
          color: AppColors.cardWhite,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            RowWeatherWidget(
              dayWeek: 'TODAY',
              iconWeather: AppImages.rainIcon,
              weatherTitle: 'Windy',
              nightTemp: '-12',
              dayTemp: '-5',
            ),
            SizedBox(height: 20),
            RowWeatherWidget(
              dayWeek: 'TUESDAY',
              iconWeather: AppImages.rainIcon,
              weatherTitle: 'Rainy',
              nightTemp: '-12',
              dayTemp: '-5',
            ),
            SizedBox(height: 20),
            RowWeatherWidget(
              dayWeek: 'WEDNESDAY',
              iconWeather: AppImages.rainIcon,
              weatherTitle: 'Cloudy',
              nightTemp: '-12',
              dayTemp: '-5',
            ),
            SizedBox(height: 20),
            RowWeatherWidget(
              dayWeek: 'THURSDAY',
              iconWeather: AppImages.rainIcon,
              weatherTitle: 'Mostly',
              nightTemp: '-12',
              dayTemp: '-5',
            ),
            SizedBox(height: 20),
            RowWeatherWidget(
              dayWeek: 'FRIDAY',
              iconWeather: AppImages.rainIcon,
              weatherTitle: 'Rainy',
              nightTemp: '-12',
              dayTemp: '-5',
            ),
            SizedBox(height: 20),
            RowWeatherWidget(
              dayWeek: 'SATURDAY',
              iconWeather: AppImages.rainIcon,
              weatherTitle: 'Cloudy',
              nightTemp: '-12',
              dayTemp: '-5',
            ),
            SizedBox(height: 20),
            RowWeatherWidget(
              dayWeek: 'SUNDAY',
              iconWeather: AppImages.rainIcon,
              weatherTitle: 'Rainy',
              nightTemp: '-12',
              dayTemp: '-5',
            ),
          ],
        ),
      ),
    );
  }
}

class RowWeatherWidget extends StatelessWidget {
  String dayWeek;
  String iconWeather;
  String weatherTitle;
  String nightTemp;
  String dayTemp;

  RowWeatherWidget({
    required this.dayWeek,
    required this.iconWeather,
    required this.weatherTitle,
    required this.nightTemp,
    required this.dayTemp,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ConstrainedBox(
          constraints: BoxConstraints(minWidth: 100),
          child: Text(
            dayWeek,
            style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                fontFamily: 'Poppins',
                color: AppColors.textGrey,
                height: 1.0),
          ),
        ),
        ConstrainedBox(
          constraints: BoxConstraints(
            minWidth: 120,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image(image: AssetImage(iconWeather)),
              SizedBox(width: 16),
              Text(
                weatherTitle,
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Poppins',
                    color: AppColors.textLight,
                    height: 1.0),
              ),
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  nightTemp,
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Poppins',
                      color: AppColors.textLight,
                      height: 1.0),
                ),
                SizedBox(width: 2),
                CircleStrokeWidget(
                  width: 4,
                  height: 4,
                  borderWidth: 1,
                  color: AppColors.textLight,
                )
              ],
            ),
            SizedBox(width: 16),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  dayTemp,
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Poppins',
                      color: AppColors.textGrey,
                      height: 1.0),
                ),
                SizedBox(width: 2),
                CircleStrokeWidget(
                  width: 4,
                  height: 4,
                  borderWidth: 1,
                  color: AppColors.textGrey,
                )
              ],
            )
          ],
        )
      ],
    );
  }
}
