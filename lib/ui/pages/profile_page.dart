import 'package:flutter/material.dart';
import 'package:flutter_application_1/shared/shared_values.dart';
import 'package:flutter_application_1/ui/widgets/elevated_button_custom.dart';
import 'package:flutter_application_1/ui/widgets/foto_custom.dart';
import 'package:flutter_application_1/ui/widgets/text_field_custom.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _addressController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();

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
              const SizedBox(height: 24),
              Card(
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(kecilMargin),
                  child: Column(
                    children: [
                      FotoCustom(
                        nama: 'Nama Lengkap',
                        universitas: 'Asal Universitas',
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 13),
              Container(
                padding: const EdgeInsets.all(defaultMargin),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: whiteColor,
                  borderRadius: BorderRadius.circular(26),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextFieldCustom(
                      label: "Email",
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
                      label: "Nama",
                      hintText: 'Nama',
                      controller: _nameController,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Nama tidak boleh kosong';
                        }
                        return null;
                      },
                    ),
                    TextFieldCustom(
                      label: "Alamat",
                      hintText: 'Alamat',
                      controller: _addressController,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Alamat tidak boleh kosong';
                        }
                        return null;
                      },
                    ),
                    TextFieldCustom(
                      label: "Nomor Telepon",
                      hintText: 'Nomor Telepon',
                      controller: _phoneController,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Nomor telepon tidak boleh kosong';
                        }
                        if (!RegExp(r'^\d+$').hasMatch(value)) {
                          return 'Masukkan nomor telepon yang valid';
                        }
                        return null;
                      },
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 14),
              ElevatedButtonCustom(
                label: "Ubah Profile",
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                   
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
