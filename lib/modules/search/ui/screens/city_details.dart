import 'package:flutter/material.dart';
import 'package:flutter_weather/app_image/resources.dart';
import 'package:flutter_weather/modules/home/ui/widgets/main_weather_widget.dart';
import 'package:flutter_weather/modules/home/ui/widgets/more_info_widget.dart';
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
      appBar: AppBar(
        backgroundColor: AppColors.backgroundApp,
        elevation: 0,
        leading: BackButton(
          color: AppColors.textGrey,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: AddListWidget(),
          ),
        ],
      ),
      backgroundColor: AppColors.backgroundApp,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: ListView(
          children: [
            MainWeatherWidget(
              city: 'Bishkek',
              temp: '30',
            ),
            SizedBox(height: 16),
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

class AddListWidget extends StatefulWidget {
  const AddListWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<AddListWidget> createState() => _AddListWidgetState();
}

class _AddListWidgetState extends State<AddListWidget> {
  bool enable = false;
  Color color = AppColors.cardWhite;
  String text = 'Add to list';

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(8),
      color: color,
      child: InkWell(
        borderRadius: BorderRadius.circular(8),
        onTap: (() {}),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 11.5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                text,
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
              ),
            ],
          ),
        ),
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
          color: AppColors.cardWhite,
          borderRadius: BorderRadius.circular(7),
        ),
        child: Image(image: AssetImage(AppImages.arrowBack)),
      ),
    );
  }
}
