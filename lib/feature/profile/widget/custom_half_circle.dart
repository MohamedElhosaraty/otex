import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/theming/app_colors.dart';
import '../../../core/theming/app_text_styles.dart';

class CustomHalfCircle extends StatelessWidget {
  const CustomHalfCircle({super.key, required this.number});

  final String number;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 80,
          height: 60,
          decoration: BoxDecoration(
            color: Colors.green.shade50,

            border: const Border(
              top: BorderSide(width: 2, color: AppColors.green), // أسفل أبيض
              left: BorderSide(width: 2, color: AppColors.green), // أسفل أبيض
              right: BorderSide(width: 2, color: AppColors.green), // أسفل أبيض
            ),
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(60),
              topRight: Radius.circular(60),
            ),
          ),
          alignment: Alignment.center,
          child: Text(
            number,
            style: AppTextStyles.font16Bold(context).copyWith(
              color: AppColors.green,
            ),
          ),
        ),
        4.verticalSpace,
        Text(
          "ضعف عدد \nالمشاهدات",style: AppTextStyles.font12Regular(context).copyWith(
            decoration: TextDecoration.underline,
            decorationThickness: 2.w,
        ),
        ),
      ],
    );
  }
}
