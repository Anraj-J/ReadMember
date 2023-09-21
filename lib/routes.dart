import 'package:book/about.dart';
import 'package:book/profile.dart';
import 'package:book/login.dart';
import 'package:book/catalogue/catalogue.dart';
import 'package:book/home.dart';

var appRoutes = {
  '/': (context) => const HomeScreen(),
  '/login': (context) => const LoginScreen(),
  '/catalogue': (context) => const TopicScreen(),
  '/profile': (context) => const ProfileScreen(),
  '/about': (context) => const AboutScreen(),
};