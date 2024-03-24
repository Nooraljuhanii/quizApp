import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screens/login_screen.dart';
import 'package:google_fonts/google_fonts.dart';


class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Container(
        padding: const EdgeInsets.all(12),
    decoration: const BoxDecoration(
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
              "Computer Scince \n         Quiz App",
              style: GoogleFonts.lato(
               textStyle: const TextStyle(fontSize: 25,color: Color.fromARGB(255, 130, 72, 243), fontWeight: FontWeight.bold))
            ),
              const SizedBox(
                height: 10,
              ),
            Text(
              "We are Cerative, Enjoy our App",
              style: GoogleFonts.craftyGirls(
              textStyle: const TextStyle(fontSize: 20,
              color: Color.fromARGB(255, 130, 72, 243), 
              fontWeight: FontWeight.w900),
            )),
            const Spacer(),

            SizedBox(
              width: (MediaQuery.of(context).size.width)*1/2,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 130, 72, 243),
                ),
                onPressed: (){

                  Navigator.push(context, MaterialPageRoute<void>(
                    builder: (BuildContext context) => LoginScreen(),
                  ),
                  );
                }, 
                child: const Text(
                  "Start",
                   style: TextStyle( 
                    fontSize: 20, fontWeight: FontWeight.w900,
                    color: Color.fromARGB(255, 151, 212, 233), 
                  )),
            ))
           ],
          ),
   
        )
    );

  } 
  }