import 'package:flutter/material.dart';
import 'package:flutter_weather/theme/app_color.dart';

class MoreInfoWidget extends StatelessWidget {
  const MoreInfoWidget({
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