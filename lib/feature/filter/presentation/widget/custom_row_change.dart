import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/app_text_styles.dart';
import '../../../../generated/assets.dart';

class CustomRowChange extends StatelessWidget {
  const CustomRowChange({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(
            Assets.svgChange),
        17. horizontalSpace,
        Column(
          children: [
            Text(
              'عقارات',
              style: AppTextStyles.font14Medium(context)
            ),
            Text(
              'فلل البيع',
              style: AppTextStyles.font12Regular(context).copyWith(
                color: AppColors.lightGrey
              )
            ),
          ],
        ),
        Spacer(),
        Text(
          'تغيير',
          style: AppTextStyles.font14Bold(context).copyWith(
            color: AppColors.blue
          )
        ),
      ],
    );
  }
}
