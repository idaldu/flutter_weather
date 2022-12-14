import 'package:flutter/material.dart';
import 'package:flutter_weather/app_image/resources.dart';
import 'package:flutter_weather/theme/app_color.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({Key? key}) : super(key: key);

  @override
  _HomeWidgetState createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      padding: EdgeInsets.only(top: 25),
      child: ListView(
        children: [
          _MainScreenWidget(),
        ],
      ),
    );
  }
}

class _MainScreenWidget extends StatelessWidget {
  const _MainScreenWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          _SliderControllerWidget(),
          SizedBox(height: 50),
          _MainWatherWidget(),
          SizedBox(height: 25),
          _MoreInfoWidget(),
          SizedBox(height: 25),
          _SunriseSunsetWigdet(),
          SizedBox(height: 25),
        ],
      ),
    );
  }
}

class _SunriseSunsetWigdet extends StatelessWidget {
  const _SunriseSunsetWigdet({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
          color: Color(0xFFFFFFFF), borderRadius: BorderRadius.circular(11)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'SUNRISE & SUNSET',
              style: TextStyle(
                fontFamily: 'Poppins',
                color: AppColors.textLight,
                fontSize: 12,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: 31),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 19),
              child: Image(image: AssetImage(AppImages.sunrise)),
            ),
            Text(
              'Length of day: 13H 12M',
              style: TextStyle(
                fontFamily: 'Poppins',
                color: AppColors.textLight,
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            ),
            Text(
              'Remaining daylight: 9H 22M',
              style: TextStyle(
                fontFamily: 'Poppins',
                color: AppColors.textLight,
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _MoreInfoWidget extends StatelessWidget {
  const _MoreInfoWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
      decoration: BoxDecoration(
          color: Color(0xFFFFFFFF), borderRadius: BorderRadius.circular(11)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          StatusCardItem(
            title: 'TIME',
            value: '11:25 AM',
          ),
          StatusCardItem(
            title: 'UV',
            value: '4',
          ),
          StatusCardItem(
            title: '% RAIN',
            value: '58%',
          ),
          StatusCardItem(
            title: 'AQ',
            value: '22',
          ),
        ],
      ),
    );
  }
}

class StatusCardItem extends StatelessWidget {
  final String? title;
  final String? value;

  const StatusCardItem({
    Key? key,
    this.title,
    this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mediaWidth = MediaQuery.of(context).size.width;
    var elemWidth = ((mediaWidth - 56) / 4).floorToDouble();
    return Container(
      width: elemWidth,
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
              style: TextStyle(
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500,
                color: AppColors.textLight,
                fontSize: 12,
              ),
              title ?? ''),
          SizedBox(height: 4),
          Text(
              style: TextStyle(
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500,
                color: AppColors.textGrey,
                fontSize: 14,
              ),
              value ?? ''),
        ],
      ),
    );
  }
}

class _MainWatherWidget extends StatelessWidget {
  const _MainWatherWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _MainIconWidget(),
        SizedBox(height: 12),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 70),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Text(
                  'Hyderabad',
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 30,
                      height: 1.0,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w700,
                      color: AppColors.textGrey),
                ),
              ),
              Image(image: AssetImage(AppImages.arrow)),
            ],
          ),
        ),
        SizedBox(height: 12),
        Stack(
          alignment: Alignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                '31',
                style: TextStyle(
                  fontSize: 70,
                  height: 1.0,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                  color: AppColors.textGrey,
                ),
              ),
            ),
            Positioned(
              right: 0,
              top: 0,
              child: Container(
                width: 7.5,
                height: 7.5,
                decoration: BoxDecoration(
                    color: Colors.transparent,
                    border: Border.all(color: AppColors.textGrey, width: 2),
                    borderRadius: BorderRadius.circular(100)),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class _MainIconWidget extends StatelessWidget {
  const _MainIconWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 123,
      height: 113,
      child: Image(image: AssetImage(AppImages.weatherMain)),
    );
  }
}

class _SliderControllerWidget extends StatelessWidget {
  const _SliderControllerWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16),
        width: 80,
        height: 22,
        decoration: BoxDecoration(
            color: Color(0xFFFFFFFF), borderRadius: BorderRadius.circular(5)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 8,
              height: 8,
              decoration: BoxDecoration(
                  color: Color(0xFFF0F0F0),
                  borderRadius: BorderRadius.circular(100)),
            ),
            Container(
              width: 8,
              height: 8,
              decoration: BoxDecoration(
                  color: Color(0xFF2C2C2C),
                  borderRadius: BorderRadius.circular(100)),
            ),
            Container(
              width: 8,
              height: 8,
              decoration: BoxDecoration(
                  color: Color(0xFFF0F0F0),
                  borderRadius: BorderRadius.circular(100)),
            ),
          ],
        ),
      ),
    );
  }
}
