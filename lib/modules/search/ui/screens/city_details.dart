import 'package:flutter/material.dart';
import 'package:flutter_weather/app_image/resources.dart';
import 'package:flutter_weather/modules/home/ui/widgets/main_weather_widget.dart';
import 'package:flutter_weather/modules/home/ui/widgets/more_info_widget.dart';
import 'package:flutter_weather/modules/home/ui/widgets/slider_controller_widget.dart';
import 'package:flutter_weather/modules/home/ui/widgets/sunrise_sunser_widget.dart';
import 'package:flutter_weather/theme/app_color.dart';

class CityDetailsWidget extends StatefulWidget {
  final int cityId;
  const CityDetailsWidget({Key? key, required this.cityId}) : super(key: key);

  @override
  _CityDetailsWidgetState createState() => _CityDetailsWidgetState();
}

class _CityDetailsWidgetState extends State<CityDetailsWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundApp,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        padding: EdgeInsets.only(top: 25),
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  BackButtonWidget(),
                  AddListWidget(),
                ],
              ),
            ),
            SizedBox(height: 50),
            MainWeatherWidget(
              city: 'Bishkek',
              temp: '30',
            ),
            SizedBox(height: 25),
            MoreInfoWidget(),
            SizedBox(height: 25),
            SunriseSunsetWigdet(),
            SizedBox(height: 25),
          ],
        ),
      ),
    );
  }
}

class AddListWidget extends StatelessWidget {
  const AddListWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 11.5),
      decoration: BoxDecoration(
        color: AppColors.CardWhite,
        borderRadius: BorderRadius.circular(7),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Add to list',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 12,
                height: 1.0,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500,
                color: AppColors.textGrey),
          ),
          SizedBox(width: 10),
          Padding(
            padding: const EdgeInsets.only(bottom: 2),
            child: Image(image: AssetImage(AppImages.addCircle)),
          )
        ],
      ),
    );
  }
}

class BackButtonWidget extends StatelessWidget {
  const BackButtonWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pop();
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
        decoration: BoxDecoration(
          color: AppColors.CardWhite,
          borderRadius: BorderRadius.circular(7),
        ),
        child: Image(image: AssetImage(AppImages.arrowBack)),
      ),
    );
  }
}
