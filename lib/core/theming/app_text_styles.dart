import 'package:flutter/material.dart';
import 'app_colors.dart';
import 'app_font_weights.dart';
import 'app_text_size.dart';

class AppTextStyles {
  static const Color textColor =
      AppColors.moreBlack; // Assuming you still need AppColors

  static String getFontFamily(String fontFamily) {

    return fontFamily;
  }

  // Base style to reuse common properties
  static TextStyle baseStyle({

    required FontWeight fontWeight,
    required double fontSize,
    FontStyle? fontStyle,
    BuildContext? context,
    String fontFamily = "MadaniArabic",
  }) {

    return TextStyle(
      color: textColor,
      fontWeight: fontWeight,
      fontSize: fontSize,
      fontStyle: fontStyle,
      fontFamily: fontFamily,
    );
  }

  static TextStyle font12Medium(BuildContext context) => baseStyle(
    fontWeight: AppFontWeights.fontWeightMedium,
    fontSize: AppTextSizes.fontSize12,
    fontStyle: FontStyle.normal,
    context: context,
  );
  static TextStyle font16Medium(BuildContext context) => baseStyle(
    fontWeight: AppFontWeights.fontWeightMedium,
    fontSize: AppTextSizes.fontSize16,
    fontStyle: FontStyle.normal,
    context: context,
  );
  static TextStyle font14Medium(BuildContext context) => baseStyle(
    fontWeight: AppFontWeights.fontWeightMedium,
    fontSize: AppTextSizes.fontSize14,
    fontStyle: FontStyle.normal,
    context: context,
  );
  static TextStyle font24Medium(BuildContext context) => baseStyle(
    fontWeight: AppFontWeights.fontWeightMedium,
    fontSize: AppTextSizes.fontSize24,
    fontStyle: FontStyle.normal,
    context: context,
  );
  static TextStyle font16Bold(BuildContext context) => baseStyle(
    fontWeight: AppFontWeights.fontWeightBold,
    fontSize: AppTextSizes.fontSize16,
    fontStyle: FontStyle.normal,
    context: context,
  );
  static TextStyle font14Bold(BuildContext context) => baseStyle(
    fontWeight: AppFontWeights.fontWeightBold,
    fontSize: AppTextSizes.fontSize14,
    fontStyle: FontStyle.normal,
    context: context,
  );
  static TextStyle font12Regular(BuildContext context) => baseStyle(
    fontWeight: AppFontWeights.fontWeightRegular,
    fontSize: AppTextSizes.fontSize12,
    fontStyle: FontStyle.normal,
    context: context,
  );
  static TextStyle font14Regular(BuildContext context) => baseStyle(
    fontWeight: AppFontWeights.fontWeightRegular,
    fontSize: AppTextSizes.fontSize14,
    fontStyle: FontStyle.normal,
    context: context,
  );


}
