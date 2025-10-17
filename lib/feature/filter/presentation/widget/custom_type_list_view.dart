import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'custom_type_item.dart';

class CustomTypeListView extends StatefulWidget {
  const CustomTypeListView({super.key});

  @override
  State<CustomTypeListView> createState() => _CustomTypeListViewState();
}

class _CustomTypeListViewState extends State<CustomTypeListView> {

  final List<String> types = ["الكل", "توين هاوس", "فيلا منفصلة","تاون هاوس"];
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: types.length,
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
                title: types[index],
                isSelected: selectedIndex == index,
              ),
            ),
          );
        },
      ),
    );
  }
}
