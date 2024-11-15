import 'package:flutter/material.dart';
import 'package:spotify_clone/core/configs/themes/app_theme.dart';
import 'package:spotify_clone/presentation/intro/pages/choose_mode.dart';
import 'package:spotify_clone/presentation/pages/splash/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Spotify Clone',
        theme: AppTheme.lightTheme,
        home: SplashScreen());
  }
}
