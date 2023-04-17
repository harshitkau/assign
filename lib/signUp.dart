import 'package:assign/login.dart';
import 'package:assign/text_input.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Register extends StatelessWidget {
  Register({super.key});
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: Icon(
          CupertinoIcons.arrow_turn_up_left,
          size: 40,
          color: Colors.white.withOpacity(0.7),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 30, vertical: 40),
          child: Column(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Let's gets started .",
                      style: TextStyle(
                          color: Colors.white.withOpacity(0.9),
                          fontSize: 30,
                          fontWeight: FontWeight.w700),
                    ),
                    SizedBox(height: 40),
                    Text(
                      "India's first",
                      style: TextStyle(
                          color: Colors.grey.withOpacity(0.9), fontSize: 25),
                    ),
                    SizedBox(height: 5),
                    Text(
                      "Social Meme Platform",
                      style: TextStyle(
                          color: Colors.grey.withOpacity(0.9), fontSize: 25),
                    ),
                    SizedBox(height: 80),
                    TextInputField(
                        controller: _emailController, myLabelText: "Email"),
                    SizedBox(height: 40),
                    TextInputField(
                        controller: _passwordController,
                        myLabelText: "Create Password"),
                  ],
                ),
                SizedBox(height: 250),
                Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          "Already have an account ?",
                          style: TextStyle(
                              color: Colors.grey.withOpacity(0.9),
                              fontSize: 17),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Login()));
                          },
                          child: Text(
                            " Login",
                            style: TextStyle(
                                color: Colors.white.withOpacity(0.9),
                                fontSize: 17),
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 10),
                    ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll(
                                Colors.grey.withOpacity(0.3)),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25),
                            ))),
                        onPressed: () {},
                        child: Container(
                            height: 50,
                            width: MediaQuery.of(context).size.width,
                            child: Center(
                              child: Text(
                                "Sign In",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              ),
                            ))),
                  ],
                )
              ]),
        ),
      ),
    );
  }
}
// 