import 'package:flutter/material.dart';
import 'package:flutter_weather/theme/app_color.dart';

class StatusCardItemWidget extends StatelessWidget {
  final String? title;
  final String? value;

  const StatusCardItemWidget({
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
