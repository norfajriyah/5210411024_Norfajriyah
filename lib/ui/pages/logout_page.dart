import 'package:flutter/material.dart';
import 'package:flutter_application_1/shared/shared_values.dart';
import 'package:flutter_application_1/ui/pages/login_page.dart';
import 'package:flutter_application_1/ui/widgets/elevated_button_custom.dart';

class LogoutPage extends StatelessWidget {
  const LogoutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kecilMargin),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 14),
              ElevatedButtonCustom(
                label: "Logout",
                onPressed: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginPage()));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
