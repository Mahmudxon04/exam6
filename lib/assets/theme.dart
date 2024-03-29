import 'package:flutter/material.dart';

import 'colors.dart';

class AppTheme {
  ThemeData darkTheme() => ThemeData();

  ThemeData lightTheme() {
    final colors = AppColors();
    return ThemeData(
      scaffoldBackgroundColor: AppColors.backgroundColor,
      appBarTheme: AppBarTheme(
        backgroundColor: AppColors.appBarBack,
      ),
      extensions: [
      ],
    );
  }
}
