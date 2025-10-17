import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:otex/core/widgets/custom_text_field.dart';
import 'package:otex/feature/filter/presentation/widget/custom_pay_list_view.dart';
import 'package:otex/feature/filter/presentation/widget/custom_type_list_view.dart';

import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/app_text_styles.dart';
import '../../../../core/widgets/custom_button.dart';
import 'custom_room_list_view.dart';
import 'custom_row_change.dart';

class CustomFilterScreenBody extends StatelessWidget {
  const CustomFilterScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: ListView(
        children: [
          12.verticalSpace,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                  Icons.close, size: 25.sp,color: AppColors.moreBlack,),
              20.horizontalSpace,
              Text("فلترة", style: AppTextStyles.font24Medium(context)),
              Spacer(),
              Text(
                "رجوع للأفتراضى",
                style: AppTextStyles.font16Bold(
                  context,
                ).copyWith(color: AppColors.darkBlue),
              ),
            ],
          ),
          32.verticalSpace,
          Text(
            "الفئة",style: AppTextStyles.font16Medium(context).copyWith(
              color: AppColors.lightGrey,
          ),
          ),
          12.verticalSpace,
          const CustomRowChange(),
          20.verticalSpace,
          Divider(
            color: AppColors.lightGrey,
            thickness: 1,
          ),
          20.verticalSpace,
          Text(
            "الأقساط الشهرية",style: AppTextStyles.font16Medium(context).copyWith(
            color: AppColors.lightGrey,
          ),
          ),
          12.verticalSpace,
          Row(
            children: [
              Expanded(
                  child: CustomTextField()),
              12.horizontalSpace,
              Expanded(
                  child: CustomTextField()),
            ],
          ),
          20.verticalSpace,
          Text(
            "النوع",style: AppTextStyles.font16Medium(context).copyWith(
            color: AppColors.lightGrey,
          ),
          ),
          12.verticalSpace,
          const CustomTypeListView(),
          20.verticalSpace,
          Text(
            "عدد الغرف",style: AppTextStyles.font16Medium(context).copyWith(
            color: AppColors.lightGrey,
          ),
          ),
          const CustomRoomListView(),
          20.verticalSpace,
          Text(
            "السعر",style: AppTextStyles.font16Medium(context).copyWith(
            color: AppColors.lightGrey,
          ),
          ),
          12.verticalSpace,
          Row(
            children: [
              Expanded(
                  child: CustomTextField(
                    labelText: " أقل سعر",
                  ),),
              12.horizontalSpace,
              Expanded(
                  child: CustomTextField(
                    labelText: "أقصى سعر",
                  ),),
            ],
          ),
          20.verticalSpace,
          Text(
            "طريقة الدفع",style: AppTextStyles.font16Medium(context).copyWith(
            color: AppColors.lightGrey,
          ),
          ),
          12.verticalSpace,
          const CustomPayListView(),
          20.verticalSpace,
          Text(
            "حالة العقار",style: AppTextStyles.font16Medium(context).copyWith(
            color: AppColors.lightGrey,
          ),
          ),
          12.verticalSpace,
          const CustomPayListView(),
          80.verticalSpace,
          CustomButton(
            bgColor: AppColors.darkBlue,
            borderRadius: 32,
            onPressed: (){},
            child: Text(
              "شاهد 10,000+ نتائج",style: AppTextStyles.font16Bold(context).copyWith(color: AppColors.background),
            ),
          ),
          20.verticalSpace,
        ],
      ),
    );
  }
}
