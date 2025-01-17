import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quize/controllers/common_controller/home/home_controller.dart';
import 'package:quize/utils/app_colors.dart';

class QuizPage extends StatelessWidget {
  const QuizPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: AppColors.primaryColor,),
      body: GetBuilder<HomeController>(
        builder: (controller) {
          if (controller.quizzes.isEmpty) {
            return Center(child: CircularProgressIndicator());
          }
          if (controller.currentQuestionIndex.value >= controller.quizzes.length) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Quiz Completed!'),
                  Text('Correct Answers: ${controller.correctAnswers.value}'),
                  Text('Wrong Answers: ${controller.wrongAnswers.value}'),
                  ElevatedButton(
                    onPressed: () {
                   //   controller.updateLeaderboard();
                      Get.back();
                    },
                    child: Text('Return to Categories'),
                  ),
                ],
              ),
            );
          }
          final quiz = controller.quizzes[controller.currentQuestionIndex.value];
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Text(quiz['question'], style: TextStyle(fontSize: 20)),
              ...quiz['options'].map((option) {
                return Obx(() {
                  bool isSelected = controller.selectedOption.value == option;
                  return ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: isSelected ? Colors.green : Colors.black,
                    ),
                    onPressed: () {
                      controller.selectOption(option);
                    },
                    child: Text(option),
                  );
                });
              }).toList(),


              SizedBox(height: 20),
              ElevatedButton(
                onPressed: controller.selectedOption.value.isNotEmpty
                    ? () {
                  controller.checkAnswer(
                    controller.selectedOption.value,
                    quiz['answer'],
                  );
                  controller.moveToNextQuestion();
                }
                    : null,
                child: Text('Next'),
              )



            ],
          );
        }
      ),
    );
  }
}
