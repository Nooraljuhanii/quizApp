import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screens/splash_screen.dart';
import 'package:flutter_application_1/utins/global_variables.dart';

class ScoreScreen extends StatelessWidget {
  final int score;
  final int totalQuestions;
  const ScoreScreen({Key? key, required this.score, required this.totalQuestions}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/quiz_background.jpg"),
            fit: BoxFit.fill,         
          ),
        ),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
      
        child : Column(
          children: [
             SizedBox(
              height: (MediaQuery.of(context).size.height)*1/4,
             ),

            Image.asset(
              "assets/quiz_logo.png",
               height: 150, 
                width: 150,
                ),
             Text(
              "${UsernameController.text}, your Score is",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 130, 72, 243),
              ),
            ),
             SizedBox(height: 10),
             Text(
              "$score/$totalQuestions",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 130, 72, 243),
              ),
            ),
             SizedBox(height: 20),
            TextButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute<void>(
                    builder: (BuildContext context) =>  SplashScreen(),
                  ),
                  );
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                   Color.fromARGB(255, 130, 72, 243),
                ),
              ),
              child: Text(
                "Play again",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
