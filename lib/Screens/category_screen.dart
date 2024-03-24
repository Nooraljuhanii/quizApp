import 'package:flutter/material.dart';
import 'package:flutter_application_1/Data/app_questions_and_answers.dart';
import 'package:flutter_application_1/Screens/question_screen.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/quiz_background.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const SizedBox(height: 250),
              const Center(
                child: Text(
                  "Choose Quiz Type You want ",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 130, 72, 243),
                  ),
                ),
              ),

               const SizedBox(height: 40),
              categoryButton(
                text: "Programming",
                color: Colors.blue,
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute<void>(
                    builder: (BuildContext context) => QuestionScreen(
                      questions : QuestionsAnswers.programmingQuestionsAndAnswers,
                    ),
                  ),
                  );
                }
              ),
              const SizedBox(height: 20),
              
              categoryButton(
                text: "Data Science",
                color: Colors.green,
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute<void>(
                    builder: (BuildContext context) => QuestionScreen(
                      questions: QuestionsAnswers.dataScienceQuestionsAndAnswers,
                    ),
                  ),
                  );
                },
              ),
              const SizedBox(height: 20),
              categoryButton(
                text: "Cybersecurity",
                color: Colors.amber,
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute<void>(
                    builder: (BuildContext context) => QuestionScreen(
                      questions: QuestionsAnswers.cybersecurityQuestionsAndAnswers,
                    ),
                  ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  ElevatedButton categoryButton({
      required String text,
      required Color color,
      required VoidCallback onPressed,
    }) {
      return ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(color),
          minimumSize: MaterialStateProperty.all<Size>(const Size(250, 50)),
        ),
        child: Text(
          text,
          style: const TextStyle(fontSize: 20, color: Colors.white),
        ),
      );
    }
}
