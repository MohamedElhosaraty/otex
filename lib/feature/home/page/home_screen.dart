import 'package:flutter/material.dart';
import 'package:otex/feature/home/page/widget/custom_home_screen_body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
          child: CustomHomeScreenBody()),
    );
  }
}
