import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'custom_type_item.dart';

class CustomCaseListView extends StatefulWidget {
  const CustomCaseListView({super.key});

  @override
  State<CustomCaseListView> createState() => _CustomCaseListViewState();
}

class _CustomCaseListViewState extends State<CustomCaseListView> {

  final List<String> caseHome = ["أى", "جاهز", "قيد الأنشاء",];
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: caseHome.length,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  selectedIndex = index;
                });
              },
              child: CustomTypeItem(
                title: caseHome[index],
                isSelected: selectedIndex == index,
              ),
            ),
          );
        },
      ),
    );
  }
}
