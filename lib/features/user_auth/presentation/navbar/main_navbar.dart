import 'package:flutter/material.dart';
import 'package:hueca_movil/features/user_auth/presentation/pages/login_page.dart';
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
    final screens = [const LoginPage(), const SignUpPage()];

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
            Navigator.pushReplacementNamed(
                context, ['/login', '/prueba', '/signUp'][value]);
          },
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.person),
                activeIcon: Icon(Icons.person_2_outlined),
                label: 'Cuenta',
                backgroundColor: colors.primary),
            BottomNavigationBarItem(
                icon: Icon(Icons.message),
                activeIcon: Icon(Icons.message_outlined),
                label: 'Reseñas',
                backgroundColor: colors.tertiary),
          ]),
    );
  }
}
