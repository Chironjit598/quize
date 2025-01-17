import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:quize/helpers/my_extension.dart';
import 'package:quize/utils/app_colors.dart';
import 'package:quize/utils/app_images.dart';

import '../../../component/image/common_image.dart';
import '../../../component/text/common_text.dart';

class GridItem extends StatelessWidget {
  const GridItem({
    super.key,

    this.title,
    this.quizNumber

  });


  final title;
  final quizNumber;






  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.r),
        color: AppColors.white,
        boxShadow: [
          BoxShadow(
              color: Colors.black.withOpacity(0.1),
              spreadRadius: 2.w,
              blurRadius: 10.r,
              offset: const Offset(0, 5)),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          20.height,

          ClipRRect(
            borderRadius: BorderRadius.circular(8.r),
            child: CommonImage(
              imageSrc: AppImages.quiz,
              imageType: ImageType.png,
              height: 100.h,
              width: 100.h,
            ),
          ),

          15.height,

          Padding(
            padding:  EdgeInsets.symmetric(horizontal: 5.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  child: CommonText(
                    top: 5.h,
                    text: title,
                    fontSize: 24.sp,
                    maxLines: 2,
                    left: 4.w,
                    textAlign: TextAlign.center,
                  ),
                ),

                Container(
                  margin: EdgeInsets.only(right: 5.w),
                  padding: EdgeInsets.all(10.r),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColors.unActive
                  ),
                  child: Center(
                    child: CommonText(

                      text: "100",
                      color: AppColors.primaryColor,
                      fontWeight: FontWeight.w700,
                      fontSize: 15.sp,



                    ),
                  ),
                ),



              ],
            ),
          ),
        ],
      ),
    );
  }
}
