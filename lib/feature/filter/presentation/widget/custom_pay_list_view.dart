import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'custom_type_item.dart';

class CustomPayListView extends StatefulWidget {
  const CustomPayListView({super.key});

  @override
  State<CustomPayListView> createState() => _CustomPayListViewState();
}

class _CustomPayListViewState extends State<CustomPayListView> {

  final List<String> pay = ["أى", "تقسيط", "كاش",];
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: pay.length,
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
                title: pay[index],
                isSelected: selectedIndex == index,
              ),
            ),
          );
        },
      ),
    );
  }
}
