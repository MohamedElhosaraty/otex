import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:otex/core/widgets/custom_button.dart';

import '../../../core/theming/app_colors.dart';
import '../../../core/theming/app_text_styles.dart';
import 'custom_extra_package.dart';
import 'custom_main_package.dart';
import 'custom_plus_package.dart';
import 'custom_super_package.dart';

class CustomProfileScreenBody extends StatelessWidget {
  const CustomProfileScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: ListView(
        children: [
          16.verticalSpace,
          Row(
            children: [
              Icon(
                Icons.arrow_back_ios_new,
                size: 20.sp,
              ),
              12.horizontalSpace,
              Text(
                "أختر الباقات اللى تناسبك",
                style: AppTextStyles.font24Medium(context),
              ),
            ],
          ),
          12.verticalSpace,
          Text(
            "أختار من باقات التمييز بل أسفل اللى تناسب أحتياجاتك",
            style: AppTextStyles.font14Regular(context).copyWith(
              color: AppColors.lightGrey,
            ),
            overflow:  TextOverflow.ellipsis,
          ),
          20.verticalSpace,
          const CustomMainPackage(),
          24.verticalSpace,
          const CustomExtraPackage(),
          5.verticalSpace,
          const CustomPlusPackage(),
          5.verticalSpace,
          const CustomSuperPackage(),
          32.verticalSpace,
          Container(
            padding: const EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              color: AppColors.moreWhite,
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: AppColors.lightGrey),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "باقات مخصصة لك",style: AppTextStyles.font14Medium(context),
                ),
                4.verticalSpace,
                Text(
                  "تواصل معنا لأختيار الباقة المناسبة لك",style: AppTextStyles.font12Regular(context),
                ),
                4.verticalSpace,
                Text(
                  "فريق المبيعات",style: AppTextStyles.font16Bold(context).copyWith(color: AppColors.darkBlue),
                ),
              ],
            ),
          ),
          190.verticalSpace,
          CustomButton(
            bgColor: AppColors.darkBlue,
              borderRadius: 32,
              onPressed: (){},
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "التالى",style: AppTextStyles.font16Bold(context).copyWith(color: AppColors.background),
                ),
                4.horizontalSpace,
                Icon(
                  Icons.arrow_forward,
                  color: AppColors.background,
                  size: 25.sp,
                ),
              ],
            ),
          ),
          20.verticalSpace,

        ],
      ),
    );
  }
}
