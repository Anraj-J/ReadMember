import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


var appTheme = ThemeData(

  fontFamily: GoogleFonts.ubuntu().fontFamily,

  // fontFamily: GoogleFonts.playfairDisplay().fontFamily,
  //primaryTextTheme: GoogleFonts.playfairDisplayTextTheme(),


  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      padding: const EdgeInsets.all(24),
      backgroundColor: Color.fromARGB(255, 14, 167, 131),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
      textStyle: const TextStyle(
      color: Colors.white,
      letterSpacing: 1.5,
      fontWeight: FontWeight.bold,
        ) 
      )
    ),
  brightness: Brightness.light,
  textTheme: TextTheme(
    bodyLarge: TextStyle(fontSize: 18),
    bodyMedium: TextStyle(fontSize: 16),
    titleLarge: TextStyle(fontWeight: FontWeight.bold,
    fontFamily: GoogleFonts.gloock().fontFamily,),

    displayLarge: TextStyle(
      color: Colors.white,
      letterSpacing: 1,
      fontSize: 18,
      fontWeight: FontWeight.bold,
      fontFamily: GoogleFonts.ubuntu().fontFamily,
    ),

    headlineMedium: TextStyle(
      color: Color.fromARGB(255, 204, 201, 116),
    ),


    titleMedium: TextStyle(
      color: Color.fromARGB(255, 204, 201, 116),
      fontSize: 25,
      fontWeight: FontWeight.bold,
    ),
),
buttonTheme: const ButtonThemeData(),

);