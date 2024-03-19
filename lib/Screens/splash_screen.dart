import 'package:flutter/material.dart';
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
               textStyle: TextStyle(fontSize: 25,color: Colors.amber, fontWeight: FontWeight.bold))
            ),
              SizedBox(
                height: 10,
              ),
            Text(
              "We are Cerative, Enjoy our App",
              style: GoogleFonts.craftyGirls(
              textStyle: TextStyle(fontSize: 22,color: Colors.amber, fontWeight: FontWeight.w500),
            )), 
            Spacer(),

            SizedBox(
              width: (MediaQuery.of(context).size.width)*1/2,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 115, 15, 132)
                ),
                onPressed: (){}, 
                child: Text(
                  "Start",
                   style: TextStyle( fontSize: 18, color: Colors.amber),
                  )),
            )
           ],
          ),
   
        )
    );

  } 
  }