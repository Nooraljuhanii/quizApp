import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screens/question_screen.dart';

class CategoryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
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
              SizedBox(height: 250),
              Center(
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

               SizedBox(height: 40),
              categoryButton(
                text: "Programming",
                color: Colors.blue,
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute<void>(
                    builder: (BuildContext context) => QuestionScreen(),
                  ),
                  );
                }
              ),
              SizedBox(height: 20),
              categoryButton(
                text: "Data Science",
                color: Colors.green,
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute<void>(
                    builder: (BuildContext context) => QuestionScreen(),
                  ),
                  );
                },
              ),
              SizedBox(height: 20),
              categoryButton(
                text: "Cybersecurity",
                color: Colors.amber,
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute<void>(
                    builder: (BuildContext context) => QuestionScreen(),
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
        child: Text(
          text,
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(color),
          minimumSize: MaterialStateProperty.all<Size>(Size(250, 50)),
        ),
      );
    }
}
