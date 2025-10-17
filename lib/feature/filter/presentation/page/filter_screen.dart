import 'package:flutter/material.dart';
import 'package:otex/feature/filter/presentation/widget/custom_filter_screen_body.dart';

class FilterScreen extends StatelessWidget {
  const FilterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: CustomFilterScreenBody()),
    );
  }
}
