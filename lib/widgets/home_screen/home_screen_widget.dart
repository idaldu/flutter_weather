import 'package:flutter/material.dart';
import 'package:flutter_weather/app_image/resources.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({Key? key}) : super(key: key);

  @override
  _HomeWidgetState createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF0F0F0),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        padding: EdgeInsets.only(top: 25),
        child: ListView(
          children: [
            _MainScreenWidget(),
          ],
        ),
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
      height: 229,
      decoration: BoxDecoration(
          color: Color(0xFFFFFFFF), borderRadius: BorderRadius.circular(11)),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            width: 290,
            height: 99,
            child: Image(
                image: AssetImage(
              AppImages.sunrise,
            )),
          ),
          Positioned(
            top: 16,
            left: 20,
            child: Text('SUNRISE & SUNSET'),
          ),
          Positioned(
            bottom: 41,
            left: 20,
            child: Text('Length of day: 13H 12M'),
          ),
          Positioned(
            bottom: 23,
            left: 20,
            child: Text('Remaining daylight: 9H 22M'),
          ),
        ],
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
      height: 60,
      padding: EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
          color: Color(0xFFFFFFFF), borderRadius: BorderRadius.circular(11)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('TIME'),
              SizedBox(
                height: 8,
              ),
              Text('11:25 AM'),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('UV'),
              SizedBox(
                height: 8,
              ),
              Text('4'),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('% RAIN'),
              SizedBox(
                height: 8,
              ),
              Text('58%'),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('AQ'),
              SizedBox(
                height: 8,
              ),
              Text('22'),
            ],
          ),
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
      mainAxisSize: MainAxisSize.min,
      children: [
        _MainIconWidget(),
        SizedBox(height: 12),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('/detail');
                },
                child: Text(
                  'Hyderabad',
                  style: TextStyle(
                      fontSize: 30,
                      height: 1.0,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w700,
                      color: Colors.black),
                )),
            Icon(Icons.arrow_circle_right),
          ],
        ),
        SizedBox(height: 12),
        Stack(
          alignment: Alignment.centerLeft,
          children: [
            Text(
              '31',
              style: TextStyle(
                fontSize: 70,
                height: 1.0,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500,
              ),
            ),
            Positioned(
              right: 0,
              top: 0,
              child: Icon(
                Icons.donut_large_outlined,
                size: 13,
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
