import 'package:flutter/material.dart';
import 'package:book/services/auth.dart';


class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Center(
        child: Container(
          margin: const EdgeInsets.only(bottom: 10),
          child: ElevatedButton(
              child: Text('Sign Out'),
              onPressed: () async {
                await AuthService().signOut();
                Navigator.of(context)
                    .pushNamedAndRemoveUntil('/', (route) => false);
              }),
        ),
      ),
    );
  }
}