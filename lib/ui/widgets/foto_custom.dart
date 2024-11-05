import 'package:flutter/material.dart';
import 'package:flutter_application_1/shared/shared_values.dart';

class FotoCustom extends StatelessWidget {
  final String nama;
  final String universitas;

  const FotoCustom({
    super.key,
    required this.nama,
    required this.universitas,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Image.asset('assets/user_avatar.jpg', height: 150, width: 150),
          Text(nama,
              style:
                  blackTextStyle.copyWith(fontSize: 14, fontWeight: semiBold)),
          Text(universitas,
              style: greyTextStyle.copyWith(fontSize: 10, fontWeight: light)),
        ],
      ),
    );
  }
}
