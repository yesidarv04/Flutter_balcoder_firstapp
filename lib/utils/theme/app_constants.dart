import 'package:flutter/material.dart';

class AppConstants {
  static const Color primaryColor = Color(0xFFADD9E6);
  static const Color secondColor = Color(0xFF152361);
  static const Color thirdColor = Color(0xFF666F98);
  
  static const TextStyle titleStyle = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    color: AppConstants.secondColor
  );

  static const TextStyle subtitleStyle = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w500,
    color: AppConstants.thirdColor
  );

  static final ButtonStyle styleButton = ElevatedButton.styleFrom(
    backgroundColor: AppConstants.primaryColor,
    foregroundColor: AppConstants.secondColor,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12),
    )
  );
}