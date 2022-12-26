import 'package:flutter/material.dart';
import 'package:flutter_weather/modules/home/ui/widgets/status_card_item_widget.dart';

class MoreInfoWidget extends StatelessWidget {
  const MoreInfoWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
        decoration: BoxDecoration(
            color: Color(0xFFFFFFFF), borderRadius: BorderRadius.circular(11)),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            StatusCardItemWidget(
              title: 'TIME',
              value: '11:25 AM',
            ),
            StatusCardItemWidget(
              title: 'UV',
              value: '4',
            ),
            StatusCardItemWidget(
              title: '% RAIN',
              value: '58%',
            ),
            StatusCardItemWidget(
              title: 'AQ',
              value: '22',
            ),
          ],
        ),
      ),
    );
  }
}
