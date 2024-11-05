import 'package:flutter/material.dart';
import 'package:flutter_application_1/shared/shared_values.dart';
import 'package:flutter_application_1/ui/pages/profile_page.dart';
import 'package:flutter_application_1/ui/widgets/foto_custom.dart';

class AkunPage extends StatelessWidget {
  const AkunPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kecilMargin),
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
            const SizedBox(height: 32),
            ListTile(
              title: const Text('Kelola Akun'),
              trailing: const Icon(Icons.arrow_forward_ios, size: 16),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ProfilePage(),
                  ),
                );
              },
            ),
            const Divider(),
            ListTile(
              title: const Text('Notifikasi'),
              trailing: const Icon(Icons.arrow_forward_ios, size: 16),
              onTap: () {},
            ),
            const Divider(),
            ListTile(
              title: const Text('Privacy Policy'),
              trailing: const Icon(Icons.arrow_forward_ios, size: 16),
              onTap: () {},
            ),
            const Divider(),
            ListTile(
              title: const Text('Terms of Service'),
              trailing: const Icon(Icons.arrow_forward_ios, size: 16),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
