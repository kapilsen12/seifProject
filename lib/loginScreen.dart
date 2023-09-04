import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:selfproject/signupScreen.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  final TextEditingController nameCont = TextEditingController();
  final TextEditingController passCont = TextEditingController();

  FirebaseAuth auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  height: 500,
                  width: double.infinity,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextField(
                          controller: nameCont,
                          decoration: InputDecoration(
                              labelText: 'Email',
                              prefixIcon: Icon(Icons.email)),
                        ),
                        TextField(
                          controller: passCont,
                          decoration: InputDecoration(
                              labelText: 'Password',
                              prefixIcon: Icon(Icons.lock)),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          child: Text('Login'),
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.deepPurple,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              fixedSize: Size(300, 20)),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text('Dont have an account?'),
                            TextButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => singup()));
                                },
                                child: Text('Sigin up'))
                          ],
                        )
                      ],
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
