import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:quize/controllers/common_controller/home/home_controller.dart';
import 'package:quize/helpers/my_extension.dart';
import 'package:quize/utils/app_colors.dart';
import 'package:quize/utils/app_images.dart';
import 'package:quize/utils/app_string.dart';
import 'package:quize/view/component/bottom_nav_bar/common_bottom_bar.dart';
import 'package:quize/view/component/image/common_image.dart';
import 'package:quize/view/component/text/common_text.dart';
import 'package:quize/view/screen/Home/widget/grid_item.dart';

import '../quiz_page.dart';

class HomeScreen extends StatelessWidget {
   HomeScreen({super.key});


   final List<Map<String, String>> imgList = [
     {
       'image': 'assets/images/quiz_banner_one.jpg',
       'title': 'Take the quiz and discover your knowledge level.',
     },
     {
       'image': 'assets/images/quiz_banner_two.jpg',
       'title': 'Challenge yourself with a variety of exciting quizzes',
     },

   ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Container(
            height: 38.h,
            width: 80.w,
            decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.circular(12.r),
            ),
            child: Row(
              children: [
                10.width,
                CommonImage(
                  imageSrc: AppImages.coin,
                  imageType: ImageType.png,
                ),
                
                CommonText(
                    left: 5.w,
                    fontSize: 18.sp,
                    color: AppColors.primaryColor,
                    text: "160")
              ],
            ),
          ),
          15.width,
        ],
        backgroundColor: AppColors.primaryColor,
        automaticallyImplyLeading: false,
        title: CommonText(
          text: "Quiz Bari",
          fontSize: 28.sp,
          color: AppColors.white,
        ),
      ),

      body: GetBuilder<HomeController>(
        builder: (controller) {
          return SingleChildScrollView(
            child: Column(
              children: [

                SizedBox(
                  height: 200,
                  child: CarouselSlider(

                    items: imgList.asMap().entries.map((map){

                      int index = map.key; // Get the index
                      var item = map.value;

                      return Builder(builder: (context){
                        return Stack(
                          alignment: Alignment.center,
                          children: [
                           ClipRRect(
                             borderRadius: BorderRadius.circular(12.r),
                             child: Image.asset(

                                 height: 200.h,
                                 fit: BoxFit.fill,
                                 width: double.infinity,
                                 item["image"]!),
                           ),

                            Positioned(
                              left:index==0?120: 30.w,
                                right:index==0?10: 120.w ,
                                child: CommonText(
                                  fontSize: 18.sp,
                                  color: AppColors.white,
                                  maxLines: 2,


                                    text: item["title"]!))
                          ],
                        );
                      });

                    }).toList(),


                          options: CarouselOptions(
                          height: 400.0,
                          enlargeCenterPage: true,
                          autoPlay: true,
                          autoPlayInterval: Duration(seconds: 3),
                          viewportFraction: 0.9,
                        ),),
                ),


                CommonText(
                    fontSize: 24,
                    left: 20,

                    bottom: 20,
                    text: AppString.categories).start,


                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 20.w),
                  child: GridView.builder(
                      itemCount: controller.categories.length,
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisSpacing: 10,
                      mainAxisExtent: 170.h,
                      mainAxisSpacing: 10,
                      crossAxisCount: 2),
                      itemBuilder: (context, index){
                        final category = controller.categories[index];
                    return GestureDetector(
                      onTap: (){
                        controller.fetchQuizzes(category['id']!);
                        Get.to(() => QuizPage());
                      },
                      child: GridItem(
                        title: category["name"],
                      ),
                    );
                      }),
                ),

                20.height,

              ],
            ),
          );
        }
      ),
      bottomNavigationBar: CommonBottomNavBar(currentIndex: 0),
    );
  }
}
