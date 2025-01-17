import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quize/helpers/my_extension.dart';
import 'package:quize/utils/app_colors.dart';
import 'package:quize/utils/app_images.dart';
import 'package:quize/utils/app_string.dart';
import 'package:quize/view/component/image/common_image.dart';
import 'package:quize/view/component/text/common_text.dart';

import '../../component/bottom_nav_bar/common_bottom_bar.dart';

class Leaderboaed extends StatelessWidget {
  const Leaderboaed({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        actions: [

          CommonImage(
            height: 60.h,
              width: 60.w,
              imageType: ImageType.png,
              imageSrc: AppImages.winner),


          20.width,
        ],
        title: CommonText(
            fontSize: 28.sp,
            color: AppColors.white,
            text: AppString.leaderboard),
        backgroundColor: AppColors.primaryColor,
      ),
      body:SingleChildScrollView(
        child: Column(
          children: [

            20.height,
            Padding(
              padding:  EdgeInsets.only(left: 20.w, right: 20.w,
              ),
              child: ListView.builder(
                  itemCount: 50,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index){
                    return Container(
                      margin: EdgeInsets.symmetric(vertical: 5.h),
                      padding: EdgeInsets.symmetric(horizontal: 10.w,vertical: 13.h),
                      decoration: BoxDecoration(

                        borderRadius: BorderRadius.circular(12.r),
                        color: Colors.indigo.shade50
                      ),
                      child: Row(
                        children: [
                          CommonText(
                            color: AppColors.primaryColor,
                              fontSize: 20.sp,
                              text: "${index.toString()}."),


                          CommonText(
                            left: 10.w,
                            color: AppColors.primaryColor,
                              fontSize: 20.sp,
                              text:"Chironjit Roy"),

                          Spacer(),


                          index==0?CommonText(
                              fontSize: 18.sp,
                              color: AppColors.primaryColor,
                              right: 6.w,
                              text: "1st"):index==1?CommonText(
                              fontSize: 18.sp,
                              color: AppColors.primaryColor,
                              right: 6.w,
                              text: "2nd"):index==2?CommonText(
                              fontSize: 18.sp,
                              color: AppColors.primaryColor,
                              right: 6.w,
                              text: "3rd"):SizedBox(),

                          CommonImage(imageSrc: AppImages.coin,
                          imageType: ImageType.png,
                          ),

                          CommonText(
                              left: 10.w,
                              color: AppColors.primaryColor,
                              fontSize: 18.sp,
                              text:"120 Coin"),



                        ],
                      ),
                    );

              }),
            ),
          ],
        ),
      ),
      bottomNavigationBar: CommonBottomNavBar(currentIndex: 1),


    );
  }
}
