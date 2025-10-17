import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:otex/core/theming/app_text_styles.dart';

import '../../../../core/theming/app_colors.dart';

class CustomFreeShipping extends StatelessWidget {
  const CustomFreeShipping({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: AppColors.lightOrange,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Row(
        children: [
          Icon(
            Icons.check,
            color: AppColors.green,
            size: 20.sp,
          ),
           5.horizontalSpace,
           Text(
            "شحن مجاني", style: AppTextStyles.font12Regular(context).copyWith(color: AppColors.green),),
          Spacer(),
          Text(
            "لأى عرض تطلبه دلوقتى !", style: AppTextStyles.font12Regular(context),),
        ],
      ),
    );
  }
}
