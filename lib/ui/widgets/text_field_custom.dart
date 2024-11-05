import 'package:flutter/material.dart';
import 'package:flutter_application_1/shared/shared_values.dart';

class TextFieldCustom extends StatelessWidget {
  final String label;
  final String hintText;
  final bool obsecureText;
  const TextFieldCustom({
    super.key,
    required this.label,
    this.obsecureText = false,
    required TextEditingController controller,
    required String? Function(dynamic value) validator,
    required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: blackTextStyle),
        const SizedBox(height: 11),
        TextField(
          obscureText: obsecureText,
          decoration: InputDecoration(
              hintText: hintText,
              hintStyle: greyTextStyle,
              focusColor: blackColor,
              hoverColor: blackColor,
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(12))),
        ),
        const SizedBox(height: 10),
      ],
    );
  }
}
