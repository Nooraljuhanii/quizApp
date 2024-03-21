import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/Screens/score_screen.dart';

class QuestionScreen extends StatelessWidget {
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
        padding: EdgeInsets.only(top: 100, left: 20, right: 20, bottom: 10), 
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                Text(
                  "Question Number:", 
                  style: TextStyle(
                    fontSize: 25, fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 130, 72, 243)),),
                Text(
                  "3/10",
                   style: TextStyle(
                    fontSize: 25, fontWeight: FontWeight.bold, 
                    color: Color.fromARGB(255, 130, 72, 243) ))
              ],
            ),
            SizedBox( height: 50,),
               Text(
                 "What is the output of 5 * 2?",
                  style: TextStyle(
                   fontSize: 25, fontWeight: FontWeight.bold, 
                   color: Color.fromARGB(255, 130, 72, 243) )),

            SizedBox(height: MediaQuery.of(context).size.height*0.05,),
           
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute<void>(
                    builder: (BuildContext context) => ScoreScreen(),
                  ),
                  );

            }, child: Text("7")),

            SizedBox(height: 10,),
            ElevatedButton(onPressed: (){

              Navigator.push(context, MaterialPageRoute<void>(
                    builder: (BuildContext context) => ScoreScreen(),
                  ),
                  );


            }, child: Text("10")),
            SizedBox(height: 10,),
            ElevatedButton(onPressed: (){

              Navigator.push(context, MaterialPageRoute<void>(
                    builder: (BuildContext context) => ScoreScreen(),
                  ),
                  );

            }, child: Text("14")),
            SizedBox(height: 10,),
            ElevatedButton(onPressed: (){
              
              Navigator.push(context, MaterialPageRoute<void>(
                    builder: (BuildContext context) => ScoreScreen(),
                  ),
                  );
            }, child: Text("25")),

          ],
        ),
      ),
    );
  }
}
