import 'package:flutter/material.dart';
import 'package:flutter_application_1/shared/shared_values.dart';
import 'package:flutter_application_1/ui/pages/login_page.dart';
import 'package:flutter_application_1/ui/widgets/elevated_button_custom.dart';
import 'package:flutter_application_1/ui/widgets/text_field_custom.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();

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
              const SizedBox(height: 20),
              Center(
                child: Text(
                  'Daftar',
                  style:
                      blackTextStyle.copyWith(
                        fontSize: 38, 
                        fontWeight: bold),
                ),
              ),
              const SizedBox(height: 20),
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
                      label: "Masukkan Password",
                      hintText: 'Password',
                      obsecureText: true,
                      controller: _passwordController,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Password tidak boleh kosong';
                        }
                        if (value.length < 6) {
                          return 'Password harus terdiri dari minimal 6 karakter';
                        }
                        return null;
                      },
                    ),
                    TextFieldCustom(
                      label: 'Masukkan Kembali Password',
                      hintText: 'Ulangi Password',
                      obsecureText: true,
                      controller: _confirmPasswordController,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Harap masukkan kembali password';
                        }
                        if (value != _passwordController.text) {
                          return 'Password tidak cocok';
                        }
                        return null;
                      },
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: kecilMargin),
                child: Row(
                  children: [
                    Text(
                      'Sudah memiliki akun?',
                      style: greyTextStyle,
                    ),
                    const SizedBox(width: 5),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const LoginPage(),
                          ),
                        );
                      },
                      child: Text(
                        'Masuk',
                        style: primaryTextStyle,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 14),
              Center(
                child: ElevatedButtonCustom(
                  label: 'Daftar',
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
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
