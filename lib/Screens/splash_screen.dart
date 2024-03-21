import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screens/login_screen.dart';
import 'package:google_fonts/google_fonts.dart';


class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Container(
        padding: EdgeInsets.all(12),
    decoration: BoxDecoration(
        image: DecorationImage(
                image: AssetImage("assets/quiz_background.jpg"),
                fit: BoxFit.fill )),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,


        child: Column(
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
              "ITI Quiz App",
              style: GoogleFonts.lato(
               textStyle: TextStyle(fontSize: 25,color: const Color.fromARGB(255, 130, 72, 243), fontWeight: FontWeight.bold))
            ),
              SizedBox(
                height: 10,
              ),
            Text(
              "We are Cerative, Enjoy our App",
              style: GoogleFonts.craftyGirls(
              textStyle: TextStyle(fontSize: 20,color: Color.fromARGB(255, 130, 72, 243), fontWeight: FontWeight.w500),
            )), 
            Spacer(),

            SizedBox(
              width: (MediaQuery.of(context).size.width)*1/2,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 151, 212, 233)
                ),
                onPressed: (){

                  Navigator.push(context, MaterialPageRoute<void>(
                    builder: (BuildContext context) => LoginScreen(),
                  ),
                  );
                }, 
                child: Text(
                  "Start",
                   style: TextStyle( fontSize: 18, color: Color.fromARGB(255, 130, 72, 243),
                  )),
            ))
           ],
          ),
   
        )
    );

  } 
  }