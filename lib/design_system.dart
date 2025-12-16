import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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

/* Text fonts */
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

/* Buttons */
class BaseButton extends ElevatedButton {
  BaseButton({
    super.key,
    required Color backgroundColor,
    required Color foregroundColor,
    required double horizontalPadding,
    required double verticalPadding,
    required String text,
    required TextStyle textStyle,
  }) : super(
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
       );
}

class BaseButton2 extends StatelessWidget {
  final double height;
  final Color backgroundColor;
  final Color foregroundColor;
  final double horizontalPadding;
  final double verticalPadding;
  final String text;
  final TextStyle textStyle;

  const BaseButton2({
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

class DesktopButton extends BaseButton2 {
  DesktopButton({
    super.key,
    required super.backgroundColor,
    required super.foregroundColor,
    required super.text,
  }) : super(
         height: 59,
         horizontalPadding: 32,
         verticalPadding: 16,
         textStyle: textPreset7,
       );
}

class MobileButton extends BaseButton2 {
  MobileButton({
    super.key,
    required super.backgroundColor,
    required super.foregroundColor,
    required super.text,
  }) : super(
         height: 48,
         horizontalPadding: 24,
         verticalPadding: 12,
         textStyle: textPreset6,
       );
}
