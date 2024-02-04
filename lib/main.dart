import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:hueca_movil/features/app/splash_screen/splash_screen.dart';
import 'package:hueca_movil/features/user_auth/presentation/pages/login_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if(kIsWeb){

    await Firebase.initializeApp(options: const FirebaseOptions(
      apiKey: "AIzaSyCdKarxXKL8tdgY5tttPd5tvdrrjEmGnSc", 
      appId: "1:62569985929:web:3a0d38441b833355919358", 
      messagingSenderId: "62569985929", 
      projectId: "huecamovilapp"
      ),
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
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Fluter firebase',
      home: SplashScreen(
        child: LoginPage(

        ),
      )
    );
  }
}

