import 'package:flutter/material.dart';
import 'package:flutter_application_1/shared/shared_values.dart';
import 'package:flutter_application_1/ui/pages/password_page.dart';
import 'package:flutter_application_1/ui/pages/register_page.dart';
import 'package:flutter_application_1/ui/widgets/elevated_button_custom.dart';
import 'package:flutter_application_1/ui/widgets/navbar_button_custom.dart';
import 'package:flutter_application_1/ui/widgets/text_field_custom.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kecilMargin),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 84),
              Center(
                child: Image.asset('assets/logo_responsi.png',
                    width: 252, height: 96),
              ),
              Center(
                child: Text(
                  'Masuk',
                  style:
                      blackTextStyle.copyWith(fontSize: 38, fontWeight: bold),
                ),
              ),
              const SizedBox(height: 13),
              Container(
                padding: const EdgeInsets.all(kecilMargin),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: whiteColor,
                  borderRadius: BorderRadius.circular(26),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextFieldCustom(
                      label: "Masukkan Email",
                      hintText: 'Email',
                      controller: _emailController,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Email tidak boleh kosong';
                        }
                        if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
                          return 'Masukkan email yang valid';
                        }
                        return null;
                      },
                    ),
                    TextFieldCustom(
                      label: "Password",
                      hintText: 'Password',
                      obsecureText: true,
                      controller: _passwordController,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Password tidak boleh kosong';
                        }
                        return null;
                      },
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(
                    left: kecilMargin, right: kecilMargin),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Belum punya akun?',
                      style: greyTextStyle,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const PasswordPage(),
                          ),
                        );
                      },
                      child: Text(
                        'Lupa Password? ',
                        style: primaryTextStyle,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: kecilMargin),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const RegisterPage(),
                      ),
                    );
                  },
                  child: Text(
                    'Daftar',
                    style: primaryTextStyle,
                  ),
                ),
              ),
              const SizedBox(height: 14),
              Center(
                child: ElevatedButtonCustom(
                  label: 'Masuk',
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const NavbarButtonCustom(),
                        ),
                      );
                    }
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
