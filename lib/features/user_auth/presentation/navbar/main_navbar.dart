

import 'package:flutter/material.dart';
import 'package:hueca_movil/features/user_auth/presentation/pages/home_page.dart';
import 'package:hueca_movil/features/user_auth/presentation/pages/login_page.dart';
import 'package:hueca_movil/features/user_auth/presentation/pages/prueba.dart';
import 'package:hueca_movil/features/user_auth/presentation/pages/sign_up_page.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key, required LoginPage child});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {

    final colors = Theme.of(context).colorScheme;
    final screens = [const HomePage(), const pruebaPage()];

    return Scaffold(

      body: IndexedStack(
        index: selectedIndex,
        children: screens,
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        currentIndex: selectedIndex,
        onTap: (value) {
          setState(() {
            selectedIndex = value;
          });
            Navigator.pushReplacementNamed(context, ['/home', '/prueba', '/signUp'][value]);

        },
        items: [
          BottomNavigationBarItem(
            icon: const Icon(Icons.person),
            activeIcon: const Icon(Icons.person_2_outlined),
            label: 'Cuenta',
            backgroundColor: colors.primary),

            BottomNavigationBarItem(
            icon: const Icon(Icons.message),
            activeIcon: const Icon(Icons.message_outlined),
            label: 'Reseñas',
            backgroundColor: colors.tertiary),

      ]),

    );
  }
}