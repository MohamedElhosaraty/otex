import 'package:flutter/material.dart';

import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/app_text_styles.dart';

class CustomCategoryItem extends StatelessWidget {
  const CustomCategoryItem({super.key, required this.title, this.isSelected = false});

  final bool isSelected ;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: isSelected ? AppColors.lightOrange : AppColors.background,
        borderRadius: BorderRadius.circular(5),
        border: Border.all(color: AppColors.lightGrey),
      ),
      child: Text(title,
          style: AppTextStyles.font14Medium(context).copyWith(
            color: isSelected ? AppColors.orange : AppColors.lightGrey,
          ),
      ),
    );
  }
}
