import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/theming/app_colors.dart';
import '../../../core/theming/app_text_styles.dart';
import '../../../generated/assets.dart';
import 'custom_half_circle.dart';

class CustomPlusPackage extends StatefulWidget {
  const CustomPlusPackage({super.key});

  @override
  State<CustomPlusPackage> createState() => _CustomPlusPackageState();
}

class _CustomPlusPackageState extends State<CustomPlusPackage> {

   bool plusPackage = false;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 370.h,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            top: 20,
            right: 0,
            left: 0,
            child: Container(
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: AppColors.lightGrey),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Checkbox(
                        value: plusPackage,
                        checkColor: AppColors.background,
                        activeColor: AppColors.darkBlue,
                        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        visualDensity: VisualDensity.compact,
                        onChanged: (value){
                          setState(() {
                            plusPackage = value!;
                          });
                        },
                      ),
                      5.horizontalSpace,
                      Text(
                        'بلس',
                        style: AppTextStyles.font16Bold(context).copyWith(
                            color: plusPackage ? AppColors.darkBlue : AppColors.moreBlack
                        ),
                      ),
                      Spacer(),
                      Text(
                        "3,000ج.م",style: AppTextStyles.font16Bold(context).copyWith(
                          color: AppColors.orange,
                          decoration: TextDecoration.underline,
                          decorationThickness: 2.w,
                          decorationColor: AppColors.orange
                      ),
                      ),
                    ],
                  ),
                  Divider(
                    color: AppColors.lightGrey,
                    thickness: 1.w,
                  ),
                  12.verticalSpace,
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            crossAxisAlignment:  CrossAxisAlignment .center,
                            children: [
                              SvgPicture.asset(
                                Assets.svgTime,
                              ),
                              10.horizontalSpace,
                              Text(
                                'صلاحية الأعلان 30 يوم',
                                style: AppTextStyles.font14Medium(context),
                              ),
                            ],
                          ),
                          8.verticalSpace,
                          Row(
                            crossAxisAlignment:  CrossAxisAlignment .center,
                            children: [
                              SvgPicture.asset(
                                Assets.svgRocket,
                              ),
                              10.horizontalSpace,
                              Text(
                                'رفع لأعلى القائمة كل 3 أيام',
                                style: AppTextStyles.font14Medium(context),
                                overflow: TextOverflow.ellipsis,
                              ),
                            ],
                          ),
                          8.verticalSpace,
                          Row(
                            crossAxisAlignment:  CrossAxisAlignment .center,
                            children: [
                              SvgPicture.asset(
                                Assets.svgPin,
                              ),
                              10.horizontalSpace,
                              Column(
                                children: [
                                  Text(
                                    'تثبيت فى مقاول صحى',
                                    style: AppTextStyles.font14Medium(context),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  Text(
                                    "( خلال ال48 ساعة القادمة )",
                                    style: AppTextStyles.font14Medium(context).copyWith(
                                        color: AppColors.red
                                    ),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ],
                              ),
                            ],
                          ),
                          8.verticalSpace,
                          Row(
                            crossAxisAlignment:  CrossAxisAlignment .center,
                            children: [
                              SvgPicture.asset(
                                Assets.svgGlobe,
                              ),
                              10.horizontalSpace,
                              Text(
                                'ظهور فى كل محافظات مصر',
                                style: AppTextStyles.font14Medium(context),
                                overflow: TextOverflow.ellipsis,
                              ),
                            ],
                          ),
                          8.verticalSpace,
                          Row(
                            crossAxisAlignment:  CrossAxisAlignment .center,
                            children: [
                              SvgPicture.asset(
                                Assets.svgWorkspacePremium,
                              ),
                              10.horizontalSpace,
                              Text(
                                'أعلان مميز',
                                style: AppTextStyles.font14Regular(context),
                                overflow: TextOverflow.ellipsis,
                              ),
                            ],
                          ),
                          8.verticalSpace,
                          Row(
                            crossAxisAlignment:  CrossAxisAlignment .center,
                            children: [
                              SvgPicture.asset(
                                Assets.svgPin,
                              ),
                              10.horizontalSpace,
                              Text(
                                'تثبيت فى مقاول صحى فى\n الجهراء',
                                style: AppTextStyles.font14Regular(context),
                                overflow: TextOverflow.ellipsis,
                              ),
                            ],
                          ),
                          8.verticalSpace,
                          Row(
                            crossAxisAlignment:  CrossAxisAlignment .center,
                            children: [
                              SvgPicture.asset(
                                Assets.svgPin,
                              ),
                              10.horizontalSpace,
                              Column(
                                children: [
                                  Text(
                                    'تثبيت فى مقاول صحى',
                                    style: AppTextStyles.font14Medium(context),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  Text(
                                    "( خلال ال48 ساعة القادمة )",
                                    style: AppTextStyles.font14Medium(context).copyWith(
                                        color: AppColors.red
                                    ),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                      Spacer(),
                      CustomHalfCircle(
                          number: "18"),
                    ],
                  )
                ],
              ),
            ),
          ),
          Positioned(
              top:0,
              right: 0,
              child: SvgPicture.asset(Assets.svgBestPrice)),
        ],
      ),
    );
  }
}
