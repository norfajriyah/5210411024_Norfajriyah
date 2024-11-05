import 'package:flutter/material.dart';
import 'package:flutter_application_1/shared/shared_values.dart';

class ElevatedButtonCustom extends StatelessWidget {
  final String label;
  final VoidCallback? onPressed;
  const ElevatedButtonCustom(
      {super.key, 
      required this.label, 
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 218,
      height: 46,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: primaryColor,
        ),
        onPressed: onPressed,
        child: Text(
          label,
          style: whiteTextStyle.copyWith(
            fontSize: 16,
            fontWeight: semiBold,
          ),
        ),
      ),
    );
  }
}
