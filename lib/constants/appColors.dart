import 'package:flutter/material.dart';

class appColors {
  static const Color PRIMARY_COLOR = Color(0xFFFCAD3E);
  static const Color PRIMARY_TEXT_COLOR = Color(0xFF0A1F41);
  static const Color SECONDARY_COLOR = Color(0xFF4F9EFF);
  static const Color GRADIENT_COLOR_START = Color(0xFFF24040);
  static const Color GRADIENT_COLOR_END = Color(0xFFFF6D56);
  static const Color SECONDARY_TEXT_COLOR = Colors.grey;
  // Redesign Colors
  static const Color LIGHT = Color(0xFFFFFFFF);
  static const Color TABLE_BACKGROUND = Color(0xFFF8F8F8);
  static const Color DARK_TEXT = Color(0xFF262626);
  static const Color DARK_TEXT_60P = Color(0x99262626);
  static const Color ACCENT_TEXT = Color(0xFF626262);
  static const Color PRIMARY = PRIMARY_COLOR;
  static const Color PRIMARY_40P = Color.fromRGBO(255, 103, 79, 0.4);
  static const Color SECONDARY = SECONDARY_COLOR;
  static const Color SECONDARY_40P = Color.fromRGBO(79, 158, 255, 0.4);
  static const Color CRITICAL = Color(0xFFF25353);
  static const Color CRITICAL_40P = Color.fromRGBO(242, 83, 83, 0.4);

  static const Color CARD_SHADOW_ONE = Color(0x08000000);
  static const Color CARD_SHADOW_TWO = Color(0x07000000);
  static const Color CARD_SHADOW_THREE = Color(0x0C989494);
}

const textInputDecoration = InputDecoration(
    fillColor: Colors.red,
    filled: true,
    enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.white)),
    focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.pink)));