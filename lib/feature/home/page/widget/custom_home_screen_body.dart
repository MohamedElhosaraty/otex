import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:otex/core/helpers/extensions.dart';
import 'package:otex/feature/home/page/widget/custom_free_shipping.dart';
import 'package:otex/feature/home/page/widget/custom_grid_view_item.dart';

import '../../../../core/routing/routes.dart';
import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/app_text_styles.dart';
import 'custom_all_categories.dart';
import 'custom_category.dart';

class CustomHomeScreenBody extends StatelessWidget {
  const CustomHomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: ListView(
        children: [
          45.verticalSpace,
          Row(
            children: [
              Text(
                "أستكشف العروض",
                style: AppTextStyles.font16Medium(context),
              ),
              const Spacer(),
              InkWell(
                onTap: (){
                  context.pushNamed(Routes.filterScreen);
                },
                child: Row(
                  children: [
                    Text(
                      "الكل",
                      style: AppTextStyles.font16Bold(context).copyWith(
                        color: AppColors.lightGrey,
                      ),
                    ),
                    4.horizontalSpace,
                    const Icon(
                      Icons.arrow_forward,
                      size: 25,
                      color: AppColors.lightGrey,
                    ),
                  ],
                ),
              ),
            ],
          ),
          12.verticalSpace,
          const CustomCategory(),
          33.verticalSpace,
          const CustomAllCategories(),
          33.verticalSpace,
          const CustomFreeShipping(),
          20.verticalSpace,
          const CustomGridViewItem(),
          28.verticalSpace
        ],
      ),
    );
  }
}
