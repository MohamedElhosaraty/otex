import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'custom_type_item.dart';

class CustomRoomListView extends StatefulWidget {
  const CustomRoomListView({super.key});

  @override
  State<CustomRoomListView> createState() => _CustomRoomListViewState();
}

class _CustomRoomListViewState extends State<CustomRoomListView> {

  final List<String> room = ["4 غرف", "5 غرف+", "الكل","غرفتين","3 غرف"];
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: room.length,
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
                title: room[index],
                isSelected: selectedIndex == index,
              ),
            ),
          );
        },
      ),
    );
  }
}
