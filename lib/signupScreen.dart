import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class singup extends StatefulWidget {
  const singup({super.key});

  @override
  State<singup> createState() => _singupState();
}

class _singupState extends State<singup> {
  final TextEditingController emailCont = TextEditingController();
  final TextEditingController passCont = TextEditingController();

  FirebaseAuth auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign up'),
      ),
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
                          controller: emailCont,
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
                          onPressed: () {
                            auth.createUserWithEmailAndPassword(
                                email: emailCont.text.toString(),
                                password: passCont.text.toString());
                          },
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
                            TextButton(onPressed: () {}, child: Text('Login'))
                          ],
                        )
                      ],
                    ),
                  )
              ),
            ],
          ),
        ),
      ),
    );
  }
}

