import 'package:flutter/material.dart';
import 'package:quize/utils/app_colors.dart';
import 'package:quize/utils/app_icons.dart';
import 'package:quize/view/component/text/common_text.dart';
import 'package:quize/view/screen/common_screen/onboarding_screen/inner_widget/dot_indecator.dart';
import '../../../../helpers/my_extension.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../../helpers/app_routes.dart';
import '../../../../utils/app_images.dart';
import '../../../../utils/app_string.dart';
import '../../../component/button/common_button.dart';
import '../../../component/image/common_image.dart';

class OnboardingThreeScreen extends StatelessWidget {
  const OnboardingThreeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 24.h),
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 10.w),
          child: Column(
            children: [
              130.height,
              Center(
                  child: CommonImage(
                    imageSrc: AppImages.three,
                    height: 350.h,
                    width: 350.w,
                    imageType: ImageType.png,
                  )),



              30.height,

              DotIndicator(
                  maxdot: 3,
                  selectIndex: 2),

              40.height,


              CommonText(
                  fontSize: 28.sp,
                  fontWeight: FontWeight.w500,
                  color: AppColors.primaryColor,
                  text: AppString.onboardingThreeTitle),


              CommonText(
                  top: 15,
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w500,
                  color: AppColors.black400,
                  maxLines: 2,
                  text: AppString.onboardingThreeDes),
              120.height,
              CommonButton(
                  onTap: (){
                    Get.toNamed(AppRoutes.signIn);
                  },
                  titleText: AppString.getStarted)


            ],
          ),
        ),
      ),
    );
  }
}
