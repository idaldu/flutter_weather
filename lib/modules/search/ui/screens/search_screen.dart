import 'package:flutter/material.dart';
import 'package:flutter_weather/app_image/resources.dart';
import 'package:flutter_weather/theme/app_color.dart';

class WeatherCities {
  final int id;
  final String imageName;
  final String weather;
  final String title;
  final String temperature;
  final bool warning;

  WeatherCities({
    required this.id,
    required this.imageName,
    required this.weather,
    required this.title,
    required this.temperature,
    required this.warning,
  });
}

class SearchScreenWidget extends StatefulWidget {
  SearchScreenWidget({Key? key}) : super(key: key);

  @override
  _SearchScreenWidgetState createState() => _SearchScreenWidgetState();
}

class _SearchScreenWidgetState extends State<SearchScreenWidget> {
  final weatherCities = <WeatherCities>[
    WeatherCities(
      id: 1,
      imageName: AppImages.weatherCloudy,
      weather: 'Expecting Rainfall',
      title: 'Bishkek',
      temperature: '10',
      warning: true,
    ),
    WeatherCities(
      id: 2,
      imageName: AppImages.weatherCloudy,
      weather: 'Expecting Rainfall',
      title: 'Balykchy',
      temperature: '15',
      warning: true,
    ),
    WeatherCities(
      id: 3,
      imageName: AppImages.weatherCloudy,
      weather: 'Expecting Rainfall',
      title: 'Osh',
      temperature: '17',
      warning: true,
    ),
    WeatherCities(
      id: 4,
      imageName: AppImages.weatherCloudy,
      weather: 'Expecting Rainfall',
      title: 'Batken',
      temperature: '18',
      warning: true,
    ),
    WeatherCities(
      id: 5,
      imageName: AppImages.weatherCloudy,
      weather: 'Expecting Rainfall',
      title: 'Jalal-Abad',
      temperature: '-20',
      warning: true,
    ),
    WeatherCities(
      id: 6,
      imageName: AppImages.weatherCloudy,
      weather: 'Expecting Rainfall',
      title: 'Kant',
      temperature: '30',
      warning: true,
    ),
    WeatherCities(
      id: 7,
      imageName: AppImages.weatherCloudy,
      weather: 'Expecting Rainfall',
      title: 'Kara-Balta',
      temperature: '-16',
      warning: true,
    ),
    WeatherCities(
      id: 8,
      imageName: AppImages.weatherCloudy,
      weather: 'Expecting Rainfall',
      title: 'Karakol',
      temperature: '20',
      warning: true,
    ),
  ];

  var filteredCities = <WeatherCities>[];

  final _searchController = TextEditingController();

  void _searchCity() {
    final quare = _searchController.text;
    if (quare.isNotEmpty) {
      filteredCities = weatherCities.where((WeatherCities city) {
        return city.title.toLowerCase().contains(quare.toLowerCase());
      }).toList();
    } else {
      filteredCities = <WeatherCities>[];
    }
    setState(() {});
  }

  @override
  void initState() {
    super.initState();

    _searchController.addListener(_searchCity);
  }

  void onCityTap(int index) {
    final id = weatherCities[index].id;
    Navigator.of(context).pushNamed(
      '/search/city_details',
      arguments: id,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ListView.builder(
          padding: EdgeInsets.only(top: 95),
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          itemCount: filteredCities.length,
          itemExtent: 180,
          itemBuilder: (BuildContext context, int index) {
            final weatherData = filteredCities[index];
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              child: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: AppColors.cardWhite,
                      borderRadius: BorderRadius.circular(11),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                weatherData.title,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 20,
                                    height: 1.0,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w700,
                                    color: AppColors.textGrey),
                              ),
                              SizedBox(height: 14),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    weatherData.temperature,
                                    style: TextStyle(
                                      fontSize: 60,
                                      height: 1.0,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w500,
                                      color: AppColors.textGrey,
                                    ),
                                  ),
                                  Container(
                                    width: 7.5,
                                    height: 7.5,
                                    decoration: BoxDecoration(
                                        color: Colors.transparent,
                                        border: Border.all(
                                            color: AppColors.textGrey,
                                            width: 2),
                                        borderRadius:
                                            BorderRadius.circular(100)),
                                  ),
                                ],
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Image(
                                    image: AssetImage(AppImages.warningIcon),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: Text(
                                      'WARNING',
                                      style: TextStyle(
                                          color: AppColors.textOrange,
                                          fontFamily: 'Poppins',
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Image(image: AssetImage(weatherData.imageName)),
                              SizedBox(height: 19),
                              Text(
                                weatherData.weather,
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: AppColors.textOrange),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Material(
                    color: Colors.transparent,
                    child: InkWell(
                      borderRadius: BorderRadius.circular(11),
                      onTap: (() => onCityTap(index)),
                    ),
                  )
                ],
              ),
            );
          },
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 40),
          child: TextField(
            controller: _searchController,
            decoration: InputDecoration(
                labelText: 'Searh Location',
                labelStyle: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    color: AppColors.textLight),
                suffixIcon: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 9),
                  child: Image(image: AssetImage(AppImages.search)),
                ),
                isCollapsed: true,
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 20, vertical: 13),
                floatingLabelBehavior: FloatingLabelBehavior.never,
                filled: true,
                fillColor: AppColors.cardWhite.withAlpha(235),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(color: AppColors.cardWhite)),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(color: AppColors.cardWhite)),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15))),
          ),
        ),
      ],
    );
  }
}
