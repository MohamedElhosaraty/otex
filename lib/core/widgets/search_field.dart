import 'package:flutter/material.dart';

import '../theming/app_colors.dart';
import '../theming/app_text_styles.dart';



class SearchField extends StatelessWidget {
  const SearchField({
    super.key,
    this.onChanged,
    this.hintText,
    this.prefixIcon,
    this.suffixIcon,
    this.controller
  });

  final Function(String)? onChanged;
  final String? hintText;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      onChanged: onChanged,
      decoration: InputDecoration(
        hintText: hintText ?? "Search",
        hintStyle: AppTextStyles.font12Medium(context).copyWith(
          color: AppColors.moreBlack,
        ),
        fillColor: AppColors.moreBlack,
        filled: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14.0),
          borderSide:  BorderSide(color: AppColors.moreBlack),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14.0),
          borderSide:  BorderSide(color: AppColors.moreBlack),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14.0),
          borderSide:  BorderSide(color: AppColors.moreBlack),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14.0),
          borderSide:  BorderSide(color: AppColors.moreBlack),
        ),
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        // prefixIcon: prefixIcon ??
        //     Padding(
        //       padding: const EdgeInsets.all(16.0),
        //       child: Image.asset(
        //         Assets.imagesSearch,
        //         width: 24,
        //         height: 24,
        //         color: AppColors.red,
        //       ),
        //     ),
       // suffixIcon: suffixIcon ??
            // Padding(
            //   padding: const EdgeInsets.all(16.0),
            //   child: Image.asset(
            //     Assets.imagesSearch,
            //     width: 24,
            //     height: 24,
            //     color: AppColors.grey400,
            //   ),
            // ),
      )
    );
  }
}
