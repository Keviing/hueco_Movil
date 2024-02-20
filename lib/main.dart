import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:hueca_movil/features/app/splash_screen/splash_screen.dart';
import 'package:hueca_movil/features/user_auth/presentation/pages/home_page.dart';
import 'package:hueca_movil/features/user_auth/presentation/pages/login_page.dart';
import 'package:hueca_movil/features/user_auth/presentation/pages/sign_up_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
      options: const FirebaseOptions(
          apiKey: "AIzaSyCdKarxXKL8tdgY5tttPd5tvdrrjEmGnSc",
          appId: "1:62569985929:web:3a0d38441b833355919358",
          messagingSenderId: "62569985929",
          projectId: "huecamovilapp"),
    );
  }
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: const ColorScheme.light(
          primary: Colors.orange,
          onPrimary: Colors.orangeAccent,
          secondary: Color.fromARGB(255, 0, 217, 255),
          onSecondary: Color.fromARGB(255, 155, 240, 255),
          background: Colors.white,
        ),
        useMaterial3: true,
        scaffoldBackgroundColor: Colors.white,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.orange, // Button background color
            foregroundColor: Colors.white, // Text color
            padding:
                const EdgeInsets.symmetric(vertical: 15.0, horizontal: 10.0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8), // Rounded corners
            ),
            elevation: 5, // Shadow depth
          ),
        ),
        cardTheme: CardTheme(
          surfaceTintColor: const Color.fromARGB(255, 191, 202, 207),
          color: const Color.fromARGB(255, 225, 245,
              254), // Aquí defines el color de fondo de las tarjetas
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
                10), // Puedes definir también aquí las esquinas redondeadas para todas las tarjetas
          ),
          elevation: 4, // La elevación o sombra de la tarjeta
        ),
        appBarTheme: const AppBarTheme(
            color: Colors.white, surfaceTintColor: Colors.white),
        inputDecorationTheme: InputDecorationTheme(
          border: const OutlineInputBorder(
            // Usa OutlineInputBorder para bordes rectangulares.
            borderSide: BorderSide(
                color: Colors.grey), // Define el color de los bordes aquí.
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
                color: Colors.grey[
                    400]!), // Color cuando el TextField está habilitado pero no enfocado.
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
                color: Colors
                    .grey[600]!), // Color cuando el TextField está enfocado.
          ),
        ),
      ),
      title: 'Hueca Movil App',
      home: const SplashScreen(),
      routes: {
        '/login': (context) => const LoginPage(),
        '/signUp': (context) => const SignUpPage(),
        '/home': (context) => const HomePage(),
      },
    );
  }
}
