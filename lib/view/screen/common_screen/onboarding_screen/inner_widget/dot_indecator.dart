import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


import '../../../../../utils/app_colors.dart';

Center DotIndicator({required int selectIndex, int? maxdot}) {
  return Center(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
          maxdot??4,
              (index) => Container(
            margin: const EdgeInsets.all(5),
            width:index == selectIndex? 28.w:8.h,
            height: 8.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: index == selectIndex
                  ? AppColors.primaryColor
                  : AppColors.secondary,
            ),
          )),
    ),
  );
}