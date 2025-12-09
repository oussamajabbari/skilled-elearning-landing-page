import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const Color blue900 = Color(0xFF13183F);
const Color blue600 = Color(0xFF666CA3);
const Color pink600 = Color(0xFFF74780);
const Color pink300 = Color(0xFFFFA7C3);
const Color waterlooGrey = Color(0xFF83869A);

const LinearGradient gradientPink = LinearGradient(
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
  colors: <Color>[Color(0xFFF02AA6), Color(0xFFFF6F48)],
);

const LinearGradient gradientPurple = LinearGradient(
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
  colors: <Color>[Color(0xFF4851FF), Color(0xFFF02AA6)],
);

final TextStyle textPreset1 = GoogleFonts.plusJakartaSans(
  textStyle: const TextStyle(
    fontSize: 56,
    height: 1.2,
    fontWeight: FontWeight.w800, // Extra bold
  ),
);
final TextStyle textPreset2 = GoogleFonts.plusJakartaSans(
  textStyle: const TextStyle(
    fontSize: 40,
    height: 1.2,
    fontWeight: FontWeight.w800,
  ),
);
final TextStyle textPreset3 = GoogleFonts.plusJakartaSans(
  textStyle: const TextStyle(
    fontSize: 32,
    height: 1.2,
    fontWeight: FontWeight.w800,
  ),
);
final TextStyle textPreset4 = GoogleFonts.plusJakartaSans(
  textStyle: const TextStyle(
    fontSize: 24,
    height: 1.2,
    fontWeight: FontWeight.w800,
  ),
);

final TextStyle textPreset5 = GoogleFonts.plusJakartaSans(
  textStyle: const TextStyle(
    fontSize: 18,
    height: 1.5,
    fontWeight: FontWeight.w500, // Medium
  ),
);
final TextStyle textPreset6 = GoogleFonts.plusJakartaSans(
  textStyle: const TextStyle(
    fontSize: 16,
    height: 1.5,
    fontWeight: FontWeight.bold,
  ),
);
final TextStyle textPreset7 = GoogleFonts.plusJakartaSans(
  textStyle: const TextStyle(
    fontSize: 18,
    height: 1.5,
    fontWeight: FontWeight.bold,
  ),
);
