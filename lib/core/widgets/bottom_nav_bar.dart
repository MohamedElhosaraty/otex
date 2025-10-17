import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import '../../generated/assets.dart';
import '../theming/app_colors.dart';
import '../theming/app_text_styles.dart';

class MyBottomNavBar extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onItemTapped;

  const MyBottomNavBar({
    super.key,
    required this.selectedIndex,
    required this.onItemTapped,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 10.h),
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(
            color: AppColors.lightGrey,
            width: 1.w,
          ),
        )
      ),
      child: BottomNavigationBar(
        iconSize: 22,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: SvgPicture.asset(Assets.svgHome,
              color: AppColors.lightGrey,),
            activeIcon: SvgPicture.asset(
             Assets.svgHome,
              color: AppColors.moreBlack,
            ),
            label: "الرئيسية",
          ),
          BottomNavigationBarItem(
            activeIcon: SvgPicture.asset(Assets.svgChat,
              color: AppColors.moreBlack,
            ),
            icon: SvgPicture.asset(Assets.svgChat,
            ),
            label: "محادثة",
          ),
          BottomNavigationBarItem(
            activeIcon: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SvgPicture.asset(Assets.svgAddAdvertisements,
                  color: AppColors.moreBlack,),
                Text(
                  "أضف إعلان",
                  style: AppTextStyles.font12Medium(context).copyWith(
                    color: AppColors.darkBlue,
                ),
                ),

              ],

            ),
            icon: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SvgPicture.asset(Assets.svgAddAdvertisements),
                Text(
                  "أضف إعلان",
                  style: AppTextStyles.font12Medium(context).copyWith(
                    color: AppColors.darkBlue,
                  ),
                ),
              ],
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            activeIcon: SvgPicture.asset(Assets.svgMyAdvertisement,
              color: AppColors.moreBlack,
            ),
            icon: SvgPicture.asset(Assets.svgMyAdvertisement,),
            label: "أعلاناتى",
          ),
          BottomNavigationBarItem(
            activeIcon: SvgPicture.asset(Assets.svgProfile,
              color: AppColors.moreBlack,
            ),
            icon: SvgPicture.asset(Assets.svgProfile,),
            label: "حسابى",
          ),

        ],
        unselectedItemColor: AppColors.lightGrey,
        selectedItemColor: AppColors.moreBlack,
        selectedLabelStyle: AppTextStyles.font12Medium(context),
        unselectedLabelStyle: AppTextStyles.font12Medium(context),
        currentIndex: selectedIndex,
        onTap: onItemTapped,
        backgroundColor: AppColors.transparent,
        elevation: 0,
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
