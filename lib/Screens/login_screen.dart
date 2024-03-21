import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screens/category_screen.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/quiz_background.jpg"),
            fit: BoxFit.fill,
          ),
        ),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: (MediaQuery.of(context).size.height) * 1 / 6,
              ),
              Image.asset(
                "assets/quiz_logo.png",
                height: 150,
                width: 150,
              ),
              SizedBox(
                height: 12, // Add vertical space between logo and text
              ),
              Text(
                "Welcome to Quiz App",
                style: GoogleFonts.craftyGirls(
                  textStyle: TextStyle(fontSize: 20, color: Color.fromARGB(255, 130, 72, 243), fontWeight: FontWeight.w500),
                ),
              ),
              SizedBox(
                height: 20, 
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: "Username",
                    filled: true, 
                    fillColor: Colors.white, 
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color.fromARGB(255, 130, 72, 243),
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide.none, 
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20, 
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {

                      Navigator.push(context, MaterialPageRoute<void>(
                    builder: (BuildContext context) => CategoryScreen(),
                  ),
                );
              },
                    child: Text(
                      "Login",
                      style: TextStyle(fontSize: 20, color: Color.fromARGB(255, 151, 212, 233)),
                    ),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(Color.fromARGB(255, 130, 72, 243)),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset(
                    "assets/search.png",
                    height: 20,
                    width: 20,
                  ),
                  SizedBox(width: 8),
                  Image.asset(
                    "assets/facebook.png",
                    height: 20,
                    width: 20,
                  ),
                  SizedBox(width: 8),
                  Image.asset(
                    "assets/linkedin.png",
                    height: 20,
                    width: 20,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
