import 'package:flutter/material.dart';
import 'package:flutter_application_1/shared/shared_values.dart';

class WidgetGrid extends StatelessWidget {
  final String artis;
  final String song;
  const WidgetGrid({super.key, 
  required this.artis, 
  required this.song});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Image.asset('assets/kill_bill.jpeg', 
          height: 150, 
          width: 150),
          Text(artis,
              style:
                  blackTextStyle.copyWith(
                    fontSize: 14, 
                    fontWeight: semiBold)),
          Text(song,
              style: greyTextStyle.copyWith(
                fontSize: 10, 
                fontWeight: light)),
        ],
      ),
    );
  }
}
