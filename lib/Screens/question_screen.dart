import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screens/score_screen.dart';

class QuestionScreen extends StatefulWidget {
  final List? questions;

  QuestionScreen({Key? key, required this.questions}) : super(key: key);

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  int _currentIndex = 0;
  int _score = 0;

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
        padding: const EdgeInsets.only(top: 100, left: 20, right: 20, bottom: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                Text(
                  "Question Number: ",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 130, 72, 243),
                  ),
                ),
                Text(
                  "${_currentIndex + 1} /${widget.questions!.length}",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 130, 72, 243),
                  ),
                )
              ],
            ),
            SizedBox(height: 50),
            Text(
              widget.questions![_currentIndex]["ques"],
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 130, 72, 243),
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.05),
            for (int i = 0; i < widget.questions![_currentIndex]["answers"].length; i++)
              ElevatedButton(
                onPressed: () {
                  if (widget.questions![_currentIndex]["correctAnswer"][i] == 1) {
                    setState(() {
                      _score++;
                    });
                  }
                  if (_currentIndex + 1 >= widget.questions!.length) {
                    Navigator.push(
                      context,
                      MaterialPageRoute<void>(
                        builder: (BuildContext context) => ScoreScreen(
                          score: _score ?? 0,
                          totalQuestions: widget.questions!.length,
                        ),
                      ),
                    );
                  } else {
                    setState(() {
                      _currentIndex++;
                    });
                  }
                },
                child: Text(
                  widget.questions![_currentIndex]["answers"][i].toString(),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
