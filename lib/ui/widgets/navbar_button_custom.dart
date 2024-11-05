import 'package:flutter/material.dart';
import 'package:flutter_application_1/ui/pages/akun_page.dart';
import 'package:flutter_application_1/ui/pages/home_page.dart';
import 'package:flutter_application_1/ui/pages/logout_page.dart';

class NavbarButtonCustom extends StatefulWidget {
  const NavbarButtonCustom({super.key});

  @override
  State<NavbarButtonCustom> createState() => _NavbarButtonCustomState();
}

class _NavbarButtonCustomState extends State<NavbarButtonCustom> {
  int _menuIndex = 0;
  final List<Widget> _pages = [
    const HomePage(),
    const AkunPage(),
    const LogoutPage(),
  ];

  void _onMenuTap(int index) {
    setState(() {
      _menuIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _menuIndex,
        children: _pages,
      ),
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: _onMenuTap,
        selectedIndex: _menuIndex,
        indicatorColor: const Color (0xffE8DEF8),
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.home_outlined),
            selectedIcon: Icon(Icons.home),
            label: 'Home',
          ),
          NavigationDestination(
            icon: Icon(Icons.person_outline),
            selectedIcon: Icon(Icons.person),
            label: 'Akun',
          ),
          NavigationDestination(
            icon: Icon(Icons.logout_outlined),
            selectedIcon: Icon(Icons.logout),
            label: 'Logout',
          ),
        ],
      ),
    );
  }
}