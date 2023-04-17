import 'package:assign/login.dart';
import 'package:assign/signUp.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.35,
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(150),
                  bottomRight: Radius.circular(150)),
              image: DecorationImage(
                  image: AssetImage(
                    "asstes/img.jpeg",
                  ),
                  fit: BoxFit.cover)),
        ),
        Container(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Build memes",
                    style: GoogleFonts.righteous(
                        color: Colors.white,
                        fontSize: 50,
                        fontWeight: FontWeight.bold)),
                Text("better",
                    style: GoogleFonts.righteous(
                        color: Colors.white,
                        fontSize: 50,
                        fontWeight: FontWeight.bold)),
                Text("together",
                    style: GoogleFonts.righteous(
                        color: Colors.white,
                        fontSize: 50,
                        fontWeight: FontWeight.bold)),
              ]),
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 40, vertical: 25),
          child: Text(
            "Bring Together your files, your tools, projects and people. Including a new mobile and desktop application",
            style: TextStyle(fontSize: 20, color: Colors.grey.withOpacity(0.8)),
          ),
        ),
        SizedBox(height: 130),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 40),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.white),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ))),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Register()));
                  },
                  child: Container(
                      height: 70,
                      width: 120,
                      child: Center(
                        child: Text(
                          "Register",
                          style: TextStyle(color: Colors.black, fontSize: 20),
                        ),
                      ))),
              ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(
                          Color.fromRGBO(240, 46, 101, 1)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ))),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Login()));
                  },
                  child: Container(
                      height: 70,
                      width: 120,
                      child: Center(
                        child: Text(
                          "Sign In",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ))),
            ],
          ),
        )
      ]),
    );
  }
}
