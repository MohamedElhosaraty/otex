import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/app_text_styles.dart';

class CustomTypeItem extends StatelessWidget {
  const CustomTypeItem({super.key, required this.title, required this.isSelected});

  final String title;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 11),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.r),
        color: AppColors.background,
        border: Border.all(
            color: isSelected ? AppColors.darkBlue : AppColors.lightGrey,
            width: isSelected ? 2.w : 1.w),
      ),
      child: Text(title,style:
      AppTextStyles.font14Medium(context).copyWith(
          color:isSelected ? AppColors.darkBlue : AppColors.lightGrey),),
    );
  }
}
