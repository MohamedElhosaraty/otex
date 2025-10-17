import 'package:flutter/material.dart';

import 'custom_item.dart';

class CustomGridViewItem extends StatelessWidget {
  const CustomGridViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        childAspectRatio: 0.40,
      ),
      itemCount: 10,
      itemBuilder: (BuildContext context, int index) {
        return const CustomItem();
      },
    );
  }
}
