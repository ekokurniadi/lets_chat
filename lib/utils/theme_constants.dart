import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'colors_constants.dart';

final ThemeData appTheme = ThemeData(
  brightness: Brightness.light,
  primaryColor: AppColors.white,
  scaffoldBackgroundColor: AppColors.scaffoldBG,
  appBarTheme: _getAppBarTheme(),
  colorScheme: _getCustomColorScheme(),
  textTheme: GoogleFonts.poppinsTextTheme(
    _getTextTheme(),
  ),
);

AppBarTheme _getAppBarTheme() {
  return AppBarTheme(
    backgroundColor: AppColors.appBar,
    titleTextStyle: GoogleFonts.poppins(
      color: AppColors.appBarTitle,
      fontSize: 20.0,
      fontWeight: FontWeight.w600,
    ),
  );
}

TextTheme _getTextTheme() {
  return TextTheme(
    headlineSmall: GoogleFonts.poppins(
      color: AppColors.white,
      fontSize: 16.0,
      fontWeight: FontWeight.w600,
    ),
  );
}

ColorScheme _getCustomColorScheme() {
  return const ColorScheme.light(
    primary: AppColors.primary,
    onPrimary: AppColors.onPrimary,
    onError: AppColors.onError,
    background: AppColors.primary,
    secondary: AppColors.secondary,
    onSecondary: AppColors.onSecondary,
  );
}
