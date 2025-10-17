import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:otex/core/theming/app_text_styles.dart';

import '../../../../core/theming/app_colors.dart';
import '../../../../generated/assets.dart';

class CustomItem extends StatelessWidget {
  const CustomItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.background,
        borderRadius: BorderRadius.circular(5),
        border: Border.all(color: AppColors.lightGrey),
      ),
      child: Column(
        children: [
          Image.asset(
            Assets.imagesPhoto,
          ),
          8.verticalSpace,
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.3,
                      child: Text(
                        "جاكيت من الصوف مناسب",style: AppTextStyles.font14Medium(context),
                        overflow:   TextOverflow.ellipsis,
                      ),
                    ),
                    Spacer(),
                    SvgPicture.asset(
                        Assets.svgVector,),
                        ]
                ),
                12.verticalSpace,
                Row(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.31,
                      child: Text(
                        "32,000,000جم/60,000,000",style: AppTextStyles.font14Medium(context).copyWith(
                        color: AppColors.orange,
                      ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Spacer(),
                    Icon(
                      Icons.favorite_border,
                      color: AppColors.moreBlack,
                      size: 25.sp,
                    ),
                        ]
                ),
                8.verticalSpace,
                Row(
                    children: [
                      Image.asset(
                        Assets.imagesLocalFireDepartment,
                      ),
                      5.horizontalSpace,
                      Text(
                        "تم بيع 3.3k+",style: AppTextStyles.font14Medium(context).copyWith(
                        color: AppColors.lightGrey,
                      ),
                      ),
                    ]
                ),
                30.verticalSpace,
                Row(
                  children: [
                    Badge(
                      alignment: Alignment(1.2, -1.2),
                      backgroundColor: AppColors.darkBlue,
                      label: Icon(
                        Icons.check,
                        color: AppColors.background,
                        size: 15.sp,
                      ),
                      child: CircleAvatar(
                        radius: 20.r,
                        backgroundColor: AppColors.lightBlue,
                        child: Image.asset(
                          Assets.imagesVector,
                          scale: .6,
                      
                        ),
                      ),
                    ),
                    Spacer(),
                    Container(
                      padding: const EdgeInsets.all(2),
                      decoration: BoxDecoration(
                        color: AppColors.background,
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: AppColors.lightGrey),
                      ),
                      child: Icon(
                        Icons.add_shopping_cart_rounded,
                        color: AppColors.moreBlack,
                        size: 25.sp,
                      ),
                    ),
                    12.horizontalSpace,
                    Image.asset(
                      Assets.imagesLogo,
                      width: 25.w,
                      height: 25.h,
                    ),

                        ],
                      ),
              ],
            ),
          ),
        ],
      ),

    );
  }
}
