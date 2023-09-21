import 'package:flutter/material.dart';
import 'package:book/login.dart';
import 'package:book/catalogue/catalogue.dart';
import 'package:book/shared/shared.dart';
import 'package:book/services/auth.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: AuthService().userStream,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const LoadingScreen();
        } else if (snapshot.hasError) {
          return const Center(
            child: ErrorMessage(),
          );
        } else if (snapshot.hasData) {
          return const TopicScreen();
        } else {
          return const LoginScreen();
        }
      },
    );
  }
}