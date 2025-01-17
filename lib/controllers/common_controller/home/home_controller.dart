import 'package:get/get.dart';

class HomeController extends GetxController{
  var categories = [
    {'id': '1', 'name': 'Math'},
    {'id': '2', 'name': 'Science'},
    {'id': '3', 'name': 'History'},
    {'id': '4', 'name': 'Geography'},
    {'id': '5', 'name': 'Technology'},
    {'id': '6', 'name': 'Literature'},
    {'id': '7', 'name': 'Sports'},
    {'id': '8', 'name': 'Music'},
    {'id': '9', 'name': 'Art'},
    {'id': '10', 'name': 'GK'}
  ].obs;

  var quizzes = [].obs;
  var currentQuestionIndex = 0.obs;
  var correctAnswers = 0.obs;
  var wrongAnswers = 0.obs;
  var totalCoins = 0.obs;
  var selectedOption = ''.obs;



  @override
  void onInit() {
    super.onInit();
  }



  void fetchQuizzes(String categoryId) {
    quizzes.value = staticQuizzes[categoryId] ?? [];
    currentQuestionIndex.value = 0;
    correctAnswers.value = 0;
    wrongAnswers.value = 0;
    selectedOption.value = '';
    update();
  }

  void selectOption(String option) {
    selectedOption.value = option;
    update();
  }

  void checkAnswer(String selectedAnswer, String correctAnswer) {
    if (selectedAnswer == correctAnswer) {
      correctAnswers.value++;
      totalCoins.value += 10;
      update();
      // Add coins for correct answer
    } else {
      wrongAnswers.value++;
      update();
    }
    selectedOption.value = '';
    update();
  }

  void moveToNextQuestion() {
    currentQuestionIndex.value++;
    update();
  }
  final staticQuizzes = {
    '1': [
      {'question': 'What is 2 + 2?', 'options': ['3', '4', '5'], 'answer': '4'},
      {'question': 'What is 5 x 5?', 'options': ['10', '20', '25'], 'answer': '25'},
      {'question': 'What is 10 - 3?', 'options': ['7', '6', '8'], 'answer': '7'},
      {'question': 'What is 9 / 3?', 'options': ['1', '2', '3'], 'answer': '3'},
      {'question': 'What is 6 x 7?', 'options': ['42', '36', '48'], 'answer': '42'}
    ],


    '2': [
      {'question': 'What planet is known as the Red Planet?', 'options': ['Earth', 'Mars', 'Jupiter'], 'answer': 'Mars'},
      {'question': 'What is the chemical symbol for water?', 'options': ['O2', 'H2O', 'CO2'], 'answer': 'H2O'},
      {'question': 'What is the hardest natural substance?', 'options': ['Gold', 'Diamond', 'Iron'], 'answer': 'Diamond'},
      {'question': 'What is the largest organ in the human body?', 'options': ['Skin', 'Heart', 'Liver'], 'answer': 'Skin'},
      {'question': 'What is the speed of light?', 'options': ['300,000 km/s', '150,000 km/s', '450,000 km/s'], 'answer': '300,000 km/s'}




    ]  ,


    '3': [
      {'question': 'What planet is known as the Red Planet?', 'options': ['Earth', 'Mars', 'Jupiter'], 'answer': 'Mars'},
      {'question': 'What is the chemical symbol for water?', 'options': ['O2', 'H2O', 'CO2'], 'answer': 'H2O'},
      {'question': 'What is the hardest natural substance?', 'options': ['Gold', 'Diamond', 'Iron'], 'answer': 'Diamond'},
      {'question': 'What is the largest organ in the human body?', 'options': ['Skin', 'Heart', 'Liver'], 'answer': 'Skin'},
      {'question': 'What is the speed of light?', 'options': ['300,000 km/s', '150,000 km/s', '450,000 km/s'], 'answer': '300,000 km/s'}


    ],
    '4': [
      {'question': 'What planet is known as the Red Planet?', 'options': ['Earth', 'Mars', 'Jupiter'], 'answer': 'Mars'},
      {'question': 'What is the chemical symbol for water?', 'options': ['O2', 'H2O', 'CO2'], 'answer': 'H2O'},
      {'question': 'What is the hardest natural substance?', 'options': ['Gold', 'Diamond', 'Iron'], 'answer': 'Diamond'},
      {'question': 'What is the largest organ in the human body?', 'options': ['Skin', 'Heart', 'Liver'], 'answer': 'Skin'},
      {'question': 'What is the speed of light?', 'options': ['300,000 km/s', '150,000 km/s', '450,000 km/s'], 'answer': '300,000 km/s'}


    ],
    '5': [
      {'question': 'What planet is known as the Red Planet?', 'options': ['Earth', 'Mars', 'Jupiter'], 'answer': 'Mars'},
      {'question': 'What is the chemical symbol for water?', 'options': ['O2', 'H2O', 'CO2'], 'answer': 'H2O'},
      {'question': 'What is the hardest natural substance?', 'options': ['Gold', 'Diamond', 'Iron'], 'answer': 'Diamond'},
      {'question': 'What is the largest organ in the human body?', 'options': ['Skin', 'Heart', 'Liver'], 'answer': 'Skin'},
      {'question': 'What is the speed of light?', 'options': ['300,000 km/s', '150,000 km/s', '450,000 km/s'], 'answer': '300,000 km/s'}


    ],
    '6': [
      {'question': 'What planet is known as the Red Planet?', 'options': ['Earth', 'Mars', 'Jupiter'], 'answer': 'Mars'},
      {'question': 'What is the chemical symbol for water?', 'options': ['O2', 'H2O', 'CO2'], 'answer': 'H2O'},
      {'question': 'What is the hardest natural substance?', 'options': ['Gold', 'Diamond', 'Iron'], 'answer': 'Diamond'},
      {'question': 'What is the largest organ in the human body?', 'options': ['Skin', 'Heart', 'Liver'], 'answer': 'Skin'},
      {'question': 'What is the speed of light?', 'options': ['300,000 km/s', '150,000 km/s', '450,000 km/s'], 'answer': '300,000 km/s'}


    ],
    '7': [
      {'question': 'What planet is known as the Red Planet?', 'options': ['Earth', 'Mars', 'Jupiter'], 'answer': 'Mars'},
      {'question': 'What is the chemical symbol for water?', 'options': ['O2', 'H2O', 'CO2'], 'answer': 'H2O'},
      {'question': 'What is the hardest natural substance?', 'options': ['Gold', 'Diamond', 'Iron'], 'answer': 'Diamond'},
      {'question': 'What is the largest organ in the human body?', 'options': ['Skin', 'Heart', 'Liver'], 'answer': 'Skin'},
      {'question': 'What is the speed of light?', 'options': ['300,000 km/s', '150,000 km/s', '450,000 km/s'], 'answer': '300,000 km/s'}


    ],
    '8': [
      {'question': 'What planet is known as the Red Planet?', 'options': ['Earth', 'Mars', 'Jupiter'], 'answer': 'Mars'},
      {'question': 'What is the chemical symbol for water?', 'options': ['O2', 'H2O', 'CO2'], 'answer': 'H2O'},
      {'question': 'What is the hardest natural substance?', 'options': ['Gold', 'Diamond', 'Iron'], 'answer': 'Diamond'},
      {'question': 'What is the largest organ in the human body?', 'options': ['Skin', 'Heart', 'Liver'], 'answer': 'Skin'},
      {'question': 'What is the speed of light?', 'options': ['300,000 km/s', '150,000 km/s', '450,000 km/s'], 'answer': '300,000 km/s'}


    ],
    '9': [
      {'question': 'What planet is known as the Red Planet?', 'options': ['Earth', 'Mars', 'Jupiter'], 'answer': 'Mars'},
      {'question': 'What is the chemical symbol for water?', 'options': ['O2', 'H2O', 'CO2'], 'answer': 'H2O'},
      {'question': 'What is the hardest natural substance?', 'options': ['Gold', 'Diamond', 'Iron'], 'answer': 'Diamond'},
      {'question': 'What is the largest organ in the human body?', 'options': ['Skin', 'Heart', 'Liver'], 'answer': 'Skin'},
      {'question': 'What is the speed of light?', 'options': ['300,000 km/s', '150,000 km/s', '450,000 km/s'], 'answer': '300,000 km/s'}


    ],
    '10': [
      {'question': 'What planet is known as the Red Planet?', 'options': ['Earth', 'Mars', 'Jupiter'], 'answer': 'Mars'},
      {'question': 'What is the chemical symbol for water?', 'options': ['O2', 'H2O', 'CO2'], 'answer': 'H2O'},
      {'question': 'What is the hardest natural substance?', 'options': ['Gold', 'Diamond', 'Iron'], 'answer': 'Diamond'},
      {'question': 'What is the largest organ in the human body?', 'options': ['Skin', 'Heart', 'Liver'], 'answer': 'Skin'},
      {'question': 'What is the speed of light?', 'options': ['300,000 km/s', '150,000 km/s', '450,000 km/s'], 'answer': '300,000 km/s'}


    ],


  };


  // void updateLeaderboard() async {
  //   try {
  //     var userDoc = FirebaseFirestore.instance.collection('leaderboard').doc('user123'); // Replace with user ID
  //     await userDoc.set({
  //       'coins': totalCoins.value,
  //       'correctAnswers': correctAnswers.value,
  //       'wrongAnswers': wrongAnswers.value,
  //       'totalQuizzes': currentQuestionIndex.value,
  //     });
  //   } catch (e) {
  //     print('Error updating leaderboard: $e');
  //   }
  // }
}