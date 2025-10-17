import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'custom_category_item.dart';

class CustomCategory extends StatefulWidget {
  const CustomCategory({super.key});

  @override
  State<CustomCategory> createState() => _CustomCategoryState();
}

class _CustomCategoryState extends State<CustomCategory> {

  final List<String> categories = ["كل العروض", "ملابس", "أكسسوارات", "إلكترونيات"];
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: 4,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (BuildContext context, int index) {
          return  Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  selectedIndex = index;
                });
              },
              child: CustomCategoryItem(
                title: categories[index],
                isSelected: selectedIndex == index,
              ),
            ),
          );
        },
      ),
    );
  }
}
