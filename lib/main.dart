import 'package:flutter/material.dart';
import 'package:widgets_app/config/theme/app_theme.dart';
import 'package:widgets_app/presentations/screens/buttons/buttons_screen.dart';
import 'package:widgets_app/presentations/screens/cards/cards_screen.dart';
import 'package:widgets_app/presentations/screens/home/home_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: AppTheme(selectedColor: 4).getTheme(),
        debugShowCheckedModeBanner: false,
        home: const HomeScreen(),
        routes: {
          "/buttons": (context) => const ButtonsScreen(),
          "/cards": (context) => const CardsScreen(),
        });
  }
}
