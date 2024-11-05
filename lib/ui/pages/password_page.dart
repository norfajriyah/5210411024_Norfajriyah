import 'package:flutter/material.dart';
import 'package:flutter_application_1/shared/shared_values.dart';
import 'package:flutter_application_1/ui/widgets/elevated_button_custom.dart';
import 'package:flutter_application_1/ui/widgets/text_field_custom.dart';

class PasswordPage extends StatefulWidget {
  const PasswordPage({super.key});

  @override
  State<PasswordPage> createState() => _PasswordPageState();
}

class _PasswordPageState extends State<PasswordPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kecilMargin),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              const SizedBox(height: 84),
              Image.asset('assets/logo_responsi.png', width: 252, height: 96),
              Text(
                'Lupa Password',
                style: blackTextStyle.copyWith(fontSize: 35, fontWeight: bold),
              ),
              const SizedBox(height: 30),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: kecilMargin),
                alignment: Alignment.centerLeft,
                child: Text(
                  'Pesan',
                  style: blackTextStyle.copyWith(
                    fontSize: 18,
                    fontWeight: bold,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: kecilMargin),
                alignment: Alignment.centerLeft,
                child: Text(
                  'Masukan email Anda dan tunggu kode etik akan dikirimkan.',
                  style: blackTextStyle.copyWith(
                    fontSize: 13,
                    fontWeight: light,
                  ),
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
                    const SizedBox(height: 14),
                    Center(
                      child: ElevatedButtonCustom(
                        label: 'Kirim',
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {}
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
