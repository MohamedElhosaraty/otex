import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/theming/app_colors.dart';
import '../../../core/theming/app_text_styles.dart';
import '../../../generated/assets.dart';

class CustomMainPackage extends StatefulWidget {
  const CustomMainPackage({super.key});

  @override
  State<CustomMainPackage> createState() => _CustomMainPackageState();
}

class _CustomMainPackageState extends State<CustomMainPackage> {

  bool mainPackage = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(8),
    border: Border.all(color: AppColors.lightGrey),
    ),
      child: Column(
        children: [
         Row(
           mainAxisAlignment: MainAxisAlignment.start,
           children: [
             Checkbox(
               value: mainPackage,
               checkColor: AppColors.background,
               activeColor: AppColors.darkBlue,
               materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
               visualDensity: VisualDensity.compact,
               onChanged: (value){
                 setState(() {
                   mainPackage = value!;
                 });
               },
             ),
             5.horizontalSpace,
             Text(
               'أساسية',
               style: AppTextStyles.font16Bold(context).copyWith(
                 color: mainPackage ? AppColors.darkBlue : AppColors.moreBlack,
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
          )
      ],
      ),
    );
  }
}
