import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gradient_elevated_button/gradient_elevated_button.dart';

/* Colors */
const Color blue900 = Color(0xFF13183F);
const Color blue600 = Color(0xFF666CA3);
const Color pink600 = Color(0xFFF74780);
const Color pink300 = Color(0xFFFFA7C3);
const Color waterlooGrey = Color(0xFF83869A);

/* Linear gradients */
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

/* Text fonts desktop */
TextStyle getTextPreset1({required Color color}) {
  return GoogleFonts.plusJakartaSans(
    textStyle: TextStyle(
      fontSize: 56,
      height: 1.2,
      fontWeight: FontWeight.w800, // Extra bold
      color: color,
    ),
  );
}

TextStyle getTextPreset2({required Color color}) {
  return GoogleFonts.plusJakartaSans(
    textStyle: TextStyle(
      fontSize: 40,
      height: 1.2,
      fontWeight: FontWeight.w800,
      color: color,
    ),
  );
}

TextStyle getTextPreset3({required Color color}) {
  return GoogleFonts.plusJakartaSans(
    textStyle: TextStyle(
      fontSize: 32,
      height: 1.2,
      fontWeight: FontWeight.w800,
      color: color,
    ),
  );
}

TextStyle getTextPreset4({required Color color}) {
  return GoogleFonts.plusJakartaSans(
    textStyle: TextStyle(
      fontSize: 24,
      height: 1.2,
      fontWeight: FontWeight.w800,
      color: color,
    ),
  );
}

TextStyle getTextPreset5({required Color color}) {
  return GoogleFonts.plusJakartaSans(
    textStyle: TextStyle(
      fontSize: 18,
      height: 1.5,
      fontWeight: FontWeight.w500, // Medium
      color: color,
    ),
  );
}

TextStyle getTextPreset6({required Color color}) {
  return GoogleFonts.plusJakartaSans(
    textStyle: TextStyle(
      fontSize: 16,
      height: 1.5,
      fontWeight: FontWeight.bold,
      color: color,
    ),
  );
}

TextStyle getTextPreset7({required Color color}) {
  return GoogleFonts.plusJakartaSans(
    textStyle: TextStyle(
      fontSize: 18,
      height: 1.5,
      fontWeight: FontWeight.bold,
      color: color,
    ),
  );
}

/* Text fonts tablet/mobile */

TextStyle getTextPresetMobile1({required Color color}) {
  return GoogleFonts.plusJakartaSans(
    textStyle: TextStyle(
      fontSize: 40,
      height: 1.2,
      fontWeight: FontWeight.w800,
      color: color,
    ),
  );
}

TextStyle getTextPresetMobile2({required Color color}) {
  return GoogleFonts.plusJakartaSans(
    textStyle: TextStyle(
      fontSize: 32,
      height: 1.2,
      fontWeight: FontWeight.w800,
      color: color,
    ),
  );
}

TextStyle getTextPresetMobile3({required Color color}) {
  return GoogleFonts.plusJakartaSans(
    textStyle: TextStyle(
      fontSize: 24,
      height: 1.2,
      fontWeight: FontWeight.w800,
      color: color,
    ),
  );
}

TextStyle getTextPresetMobile4({required Color color}) {
  return GoogleFonts.plusJakartaSans(
    textStyle: TextStyle(
      fontSize: 20,
      height: 1.2,
      fontWeight: FontWeight.w800,
      color: color,
    ),
  );
}

TextStyle getTextPresetMobile5({required Color color}) {
  return GoogleFonts.plusJakartaSans(
    textStyle: TextStyle(
      fontSize: 14,
      height: 1.2,
      fontWeight: FontWeight.bold,
      color: color,
    ),
  );
}

/* Buttons */

class BaseButton extends StatelessWidget {
  final double height;
  final Color backgroundColor;
  final Color foregroundColor;
  final double horizontalPadding;
  final double verticalPadding;
  final String text;
  final TextStyle textStyle;

  const BaseButton({
    super.key,
    required this.height,
    required this.backgroundColor,
    required this.foregroundColor,
    required this.horizontalPadding,
    required this.verticalPadding,
    required this.text,
    required this.textStyle,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          foregroundColor: foregroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(28),
          ),
          padding: EdgeInsetsDirectional.symmetric(
            horizontal: horizontalPadding,
            vertical: verticalPadding,
          ),
        ),
        onPressed: () {},
        child: Text(text, style: textStyle),
      ),
    );
  }
}

class DesktopButton extends BaseButton {
  DesktopButton({
    super.key,
    required super.backgroundColor,
    required super.foregroundColor,
    required super.text,
  }) : super(
         height: 59,
         horizontalPadding: 32,
         verticalPadding: 16,
         textStyle: getTextPreset7(color: Colors.white),
       );
}

class MobileButton extends BaseButton {
  MobileButton({
    super.key,
    required super.backgroundColor,
    required super.foregroundColor,
    required super.text,
  }) : super(
         height: 48,
         horizontalPadding: 24,
         verticalPadding: 12,
         textStyle: getTextPreset6(color: Colors.white),
       );
}

class GradientBaseButton extends StatelessWidget {
  final double height;
  final Gradient backgroundGradient;
  final Color foregroundColor;
  final double horizontalPadding;
  final double verticalPadding;
  final String text;
  final TextStyle textStyle;

  const GradientBaseButton({
    super.key,
    required this.height,
    required this.backgroundGradient,
    required this.foregroundColor,
    required this.horizontalPadding,
    required this.verticalPadding,
    required this.text,
    required this.textStyle,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: GradientElevatedButton(
        style: GradientElevatedButton.styleFrom(
          backgroundGradient: backgroundGradient,
          foregroundColor: foregroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(28),
          ),
          padding: EdgeInsetsDirectional.symmetric(
            horizontal: horizontalPadding,
            vertical: verticalPadding,
          ),
        ),
        onPressed: () {},
        child: Text(text, style: textStyle),
      ),
    );
  }
}

class MobileGradientButton extends GradientBaseButton {
  MobileGradientButton({
    super.key,
    required super.backgroundGradient,
    required super.foregroundColor,
    required super.text,
  }) : super(
         height: 48,
         horizontalPadding: 24,
         verticalPadding: 12,
         textStyle: getTextPreset6(color: Colors.white),
       );
}
