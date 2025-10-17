import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/app_text_styles.dart';
import '../../../../generated/assets.dart';

class CustomAllCategories extends StatefulWidget {
  const CustomAllCategories({super.key});

  @override
  State<CustomAllCategories> createState() => _CustomAllCategoriesState();
}

class _CustomAllCategoriesState extends State<CustomAllCategories> {

  final List<String> image = [
    Assets.imagesMan,
    Assets.imagesMan,
    Assets.imagesMan,
    Assets.imagesMan,
  ];

  final List<String> title = [
    "موضة رجالى",
    "ساعات",
    "موبايلات",
    "منتجات تجميل",
  ];


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 82.h,
      width: double.infinity,
      child: ListView.builder(
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: image.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Column(
              children: [
                Image.asset(
                  Assets.imagesMan,
                ),
                8.verticalSpace,
                Text(
                  title[index],
                  style: AppTextStyles.font12Regular(context),
                ),
              ],
            ),
          );
        }
      ),
    );
  }
}
