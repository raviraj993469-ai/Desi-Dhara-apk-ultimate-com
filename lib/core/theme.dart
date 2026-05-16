import 'package:flutter/material.dart';

class AppColors {
  static const Color deepForestGreen = Color(0xFF0F2A1D);
  static const Color heritageGreen = Color(0xFF1B3B2A);
  static const Color antiqueGold = Color(0xFFC5A46D);
  static const Color warmIvory = Color(0xFFF7F2E7);
  static const Color creamWhite = Color(0xFFFFFDF8);
  static const Color textDark = Color(0xFF1A1A1A);
  static const Color textLight = Color(0xFF666666);
}

class AppTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      useMaterial3: true,
      scaffoldBackgroundColor: AppColors.warmIvory,
      primaryColor: AppColors.deepForestGreen,
      colorScheme: ColorScheme.light(
        primary: AppColors.deepForestGreen,
        secondary: AppColors.antiqueGold,
        surface: AppColors.creamWhite,
        background: AppColors.warmIvory,
      ),
      appBarTheme: const AppBarTheme(
        backgroundColor: AppColors.deepForestGreen,
        foregroundColor: AppColors.creamWhite,
        elevation: 0,
        centerTitle: true,
        titleTextStyle: TextStyle(
          fontFamily: 'PlayfairDisplay',
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: AppColors.creamWhite,
        ),
      ),
      textTheme: const TextTheme(
        displayLarge: TextStyle(
          fontFamily: 'PlayfairDisplay',
          fontSize: 32,
          fontWeight: FontWeight.bold,
          color: AppColors.deepForestGreen,
        ),
        headlineMedium: TextStyle(
          fontFamily: 'PlayfairDisplay',
          fontSize: 24,
          fontWeight: FontWeight.w600,
          color: AppColors.deepForestGreen,
        ),
        bodyLarge: TextStyle(
          fontFamily: 'Lato',
          fontSize: 16,
          color: AppColors.textDark,
        ),
        bodyMedium: TextStyle(
          fontFamily: 'Lato',
          fontSize: 14,
          color: AppColors.textLight,
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.deepForestGreen,
          foregroundColor: AppColors.creamWhite,
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          textStyle: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            letterSpacing: 1.2,
          ),
        ),
      ),
    );
  }
}
