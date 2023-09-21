import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BottomNav extends StatelessWidget {
  const BottomNav({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      showSelectedLabels: false,
      showUnselectedLabels: false,
      items: const [

        BottomNavigationBarItem(
          icon: Icon(
            FontAwesomeIcons.book,
            size: 25,
          ),
          label: 'Catalogue',
          ),

        BottomNavigationBarItem(
          icon: Icon(
            FontAwesomeIcons.info,
            size: 25,
          ),
          label: 'About',
          ),
        


          BottomNavigationBarItem(
          icon: Icon(
            FontAwesomeIcons.user,
            size: 25,
          ),
          label: 'Profile',
          )
      ],
      unselectedItemColor: Colors.blueGrey,
      selectedItemColor: Color.fromARGB(255, 44, 117, 168),
      onTap: (int idx) {
        switch(idx) {
          case 0:
          break;

          case 1:
          Navigator.pushNamed(context, '/about');
          break;

          case 2:
          Navigator.pushNamed(context, '/profile');
          break;
        } 
      },
      );
  }
}