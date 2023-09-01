import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTheme {
  ThemeData lightTheme = ThemeData(
   
    iconTheme: const IconThemeData(color: Colors.black),
    scaffoldBackgroundColor: Colors.white,
    fontFamily: 'Cairo',
    textTheme: TextTheme(
      titleSmall: TextStyle(
        fontSize: 16.sp,
        //fontWeight: FontWeight.bold,
        color: Colors.grey,
      ),
      titleMedium: TextStyle(
        fontSize: 20.sp,
        fontWeight: FontWeight.bold,
        color: const Color(0xffd6a382),
      ),
      titleLarge: TextStyle(
          overflow: TextOverflow.ellipsis,
          color: Colors.black,
          fontSize: 25.sp,
          fontWeight: FontWeight.bold),
      //////////////
      displayMedium: TextStyle(
          fontSize: 21.sp, color: Colors.black, fontWeight: FontWeight.bold),
      headlineSmall: TextStyle(fontSize: 14.sp, color: const Color(0xffd6a382)),
      /////////////////
      bodyLarge: TextStyle(
          overflow: TextOverflow.ellipsis,
          color: Colors.black,
          fontSize: 16.sp,
          fontWeight: FontWeight.bold),
      bodySmall: TextStyle(
        fontSize: 9.sp,
        //fontWeight: FontWeight.bold,
        color: Colors.grey,
      ),
      bodyMedium: TextStyle(
          fontSize: 17.sp,
          fontWeight: FontWeight.bold,
          color: const Color(0xffd6a382)),
      ////////////////
      headlineMedium: TextStyle(
          fontSize: 15.sp, color: Colors.black, fontWeight: FontWeight.w500),
      displaySmall: TextStyle(
          fontSize: 13.sp, fontWeight: FontWeight.bold, color: Colors.black),
          labelSmall: TextStyle( fontSize: 13.sp, color: Colors.black)
    ),
    colorScheme: const ColorScheme.light(
      primary: Color(0xffd6a382),
      secondary: Color(0xffF0CDB7),
      background: Colors.black,
      brightness: Brightness.light,
      primaryContainer: Colors.white,
      secondaryContainer: Color(0xfff9f2d5),
    ),
  );
  ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: const Color(0xff181A20),
    iconTheme: const IconThemeData(color: Colors.white),
    colorScheme: const ColorScheme.dark(
      background: Colors.white,
      primaryContainer: Color(0xff1F222A),
      primary: Color(0xfff9f2d5),
      secondary: Color(0xffd6bf97),
      brightness: Brightness.dark,
      // background: Colors.
    ),
  );
}
