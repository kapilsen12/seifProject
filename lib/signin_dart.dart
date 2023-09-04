import 'package:flutter/material.dart';
import 'package:selfproject/home_screen.dart';
import 'package:sign_in_button/sign_in_button.dart';

class signin extends StatefulWidget {
  const signin({super.key});

  @override
  State<signin> createState() => _signinState();
}

class _signinState extends State<signin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/background2.png'),
                fit: BoxFit.cover)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 400,
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text('Sign in to continue'),
                  Text(
                    'Vegi',
                    style: TextStyle(
                        fontSize: 50,
                        color: Colors.white,
                        fontWeight: FontWeight.w600),
                  ),
                  Column(
                    children: [
                      SignInButton(
                        Buttons.apple,
                        onPressed: () {},
                      ),

// with custom text
                      SignInButton(
                        Buttons.google,
                        text: "Sign in with Google",
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>homescreen()));
                        },
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        'By sign in you are agreeing to our',
                        style: TextStyle(color: Colors.grey[800]),
                      ),
                      Text(
                        'Term and pricacy policy',
                        style: TextStyle(color: Colors.grey[800]),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
