import 'package:flutter/material.dart';
import 'package:flutter_application_1/shared/shared_values.dart';

class WidgetList extends StatelessWidget {
  final String headline;
  final String deskripsi;
  final String date;
  final String time;
  const WidgetList({
    super.key,
    required this.headline,
    required this.deskripsi,
    required this.date,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        children: [
          Image.asset(
            'assets/kill_bill.jpeg',
            height: 100,
            width: 100,
            fit: BoxFit.fitWidth,
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  headline,
                  style: blackTextStyle.copyWith(
                      fontSize: 14, fontWeight: semiBold),
                ),
                const SizedBox(height: 4),
                Text(
                  deskripsi,
                  style: blackTextStyle.copyWith(
                      fontSize: 14, fontWeight: light),
                ),
                const SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const Icon(Icons.add_circle_outline_outlined),
                        const SizedBox(width: 10),
                        Text(
                          date,
                          style: blackTextStyle.copyWith(
                              fontSize: 12, fontWeight: semiBold),
                        ),
                        const SizedBox(width: 10),
                        Text(
                          time,
                          style: blackTextStyle.copyWith(
                              fontSize: 12, fontWeight: semiBold),
                        ),
                      ],
                    ),
                    const Icon(Icons.play_circle, size: 24), 
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
