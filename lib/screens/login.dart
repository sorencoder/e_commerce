import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shop/screens/sign_up.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  FocusNode focusNode = FocusNode();

  bool isfilled = true;

  int radioValue = 1;

  void singIn() {
    String email = emailController.text.trim();
    String password = passwordController.text.trim();
    if (email != "" && password != "") {
    } else {
      log('please fill all the fields');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        // color: Colors.purple,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(15, 15, 10, 0),
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextFormField(
                controller: emailController,
                onFieldSubmitted: (value) {
                  if (value != '') {
                    focusNode.requestFocus();
                  }
                },
                decoration: const InputDecoration(
                  hintText: 'email',
                  labelText: 'email',
                  // errorText: 'Error message',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: passwordController,
                focusNode: focusNode,
                decoration: const InputDecoration(
                  hintText: 'password',
                  labelText: 'password',
                  // errorText: 'Error message',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              const SizedBox(
                height: 5,
              ),
              ElevatedButton(
                child: const Text('Login'),
                onPressed: () {
                  singIn();
                },
                style: ElevatedButton.styleFrom(
                    primary: (isfilled) ? Colors.blue : Colors.grey),
              ),
              Flexible(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Don't have an account?",
                        ),
                        TextButton(
                            onPressed: () {
                              Navigator.popUntil(
                                  context, (route) => route.isFirst);
                              Navigator.pushReplacement(
                                  context,
                                  CupertinoPageRoute(
                                      fullscreenDialog: true,
                                      builder: (context) => const HomePage()));
                            },
                            child: const Text(
                              'Sign Up',
                            ))
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
