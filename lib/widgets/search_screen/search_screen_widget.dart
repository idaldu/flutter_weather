import 'package:flutter/material.dart';
import 'package:flutter_weather/app_image/resources.dart';
import 'package:flutter_weather/theme/app_color.dart';

class WeatherCities {
  final String imageName;
  final String weather;
  final String title;
  final String temperature;
  final bool warning;

  WeatherCities({
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
  final _weatherCities = <WeatherCities>[
    WeatherCities(
      imageName: AppImages.weatherCloudy,
      weather: 'Expecting Rainfall',
      title: 'Bishkek',
      temperature: '10',
      warning: true,
    ),
    WeatherCities(
      imageName: AppImages.weatherCloudy,
      weather: 'Expecting Rainfall',
      title: 'Balykchy',
      temperature: '15',
      warning: true,
    ),
    WeatherCities(
      imageName: AppImages.weatherCloudy,
      weather: 'Expecting Rainfall',
      title: 'Osh',
      temperature: '17',
      warning: true,
    ),
    WeatherCities(
      imageName: AppImages.weatherCloudy,
      weather: 'Expecting Rainfall',
      title: 'Batken',
      temperature: '18',
      warning: true,
    ),
    WeatherCities(
      imageName: AppImages.weatherCloudy,
      weather: 'Expecting Rainfall',
      title: 'Jalal-Abad',
      temperature: '-20',
      warning: true,
    ),
    WeatherCities(
      imageName: AppImages.weatherCloudy,
      weather: 'Expecting Rainfall',
      title: 'Kant',
      temperature: '30',
      warning: true,
    ),
    WeatherCities(
      imageName: AppImages.weatherCloudy,
      weather: 'Expecting Rainfall',
      title: 'Kara-Balta',
      temperature: '-16',
      warning: true,
    ),
    WeatherCities(
      imageName: AppImages.weatherCloudy,
      weather: 'Expecting Rainfall',
      title: 'Karakol',
      temperature: '20',
      warning: true,
    ),
  ];

  var _filteredMovies = <WeatherCities>[];

  final _searchController = TextEditingController();
  final _focusSearch = FocusNode();

  void _searchCity() {
    final quare = _searchController.text;
    if (quare.isNotEmpty) {
      _filteredMovies = _weatherCities.where((WeatherCities city) {
        return city.title.toLowerCase().contains(quare.toLowerCase());
      }).toList();
    } else {
      _filteredMovies = <WeatherCities>[];
    }
    setState(() {});
  }

  @override
  void initState() {
    super.initState();

    _searchController.addListener(_searchCity);
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ListView.builder(
          padding: EdgeInsets.only(top: 105),
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          itemCount: _filteredMovies.length,
          itemExtent: 176,
          itemBuilder: (BuildContext context, int index) {
            final weatherData = _filteredMovies[index];
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              child: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: AppColors.CardWhite,
                      borderRadius: BorderRadius.circular(11),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
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
                      onTap: () {},
                    ),
                  )
                ],
              ),
            );
          },
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 35),
          child: TextField(
            controller: _searchController,
            focusNode: _focusSearch,
            decoration: InputDecoration(
              labelText: 'Searh',
              labelStyle: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: AppColors.textGrey),
              filled: true,
              fillColor: AppColors.CardWhite.withAlpha(200),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
            ),
          ),
        )
      ],
    );
  }
}
