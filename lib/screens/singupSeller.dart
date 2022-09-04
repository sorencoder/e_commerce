import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shop/screens/login.dart';

class SignUpSeller extends StatefulWidget {
  const SignUpSeller({Key? key}) : super(key: key);

  @override
  State<SignUpSeller> createState() => _SignUpSellerState();
}

class _SignUpSellerState extends State<SignUpSeller> {
  TextEditingController nameController = TextEditingController();
  TextEditingController businessController = TextEditingController();
  TextEditingController cityController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  FocusNode businessNameFocus = FocusNode();
  FocusNode emailFocus = FocusNode();
  FocusNode cityFocus = FocusNode();
  FocusNode phoneFocus = FocusNode();
  FocusNode passwordFocus = FocusNode();

  String? selectedValue = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Seller Account'),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(15, 15, 10, 0),
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.center,

          children: [
            TextFormField(
              controller: nameController,
              onFieldSubmitted: (value) {
                if (value != '') {
                  businessNameFocus.requestFocus();
                }
              },
              decoration: const InputDecoration(
                hintText: 'Name',
                labelText: 'Name',
                // errorText: 'Error message',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            TextFormField(
              controller: businessController,
              focusNode: businessNameFocus,
              onFieldSubmitted: (value) {
                if (value != '') {
                  cityFocus.requestFocus();
                }
              },
              decoration: const InputDecoration(
                hintText: 'Business Name',
                labelText: 'Business Name',
                // errorText: 'Error message',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            TextFormField(
              controller: cityController,
              focusNode: cityFocus,
              onFieldSubmitted: (value) {
                if (value != '') {
                  phoneFocus.requestFocus();
                }
              },
              decoration: const InputDecoration(
                hintText: 'City',
                labelText: 'City',
                // errorText: 'Error message',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            TextFormField(
              controller: phoneController,
              focusNode: phoneFocus,
              onFieldSubmitted: (value) {
                if (value != '') {
                  emailFocus.requestFocus();
                }
              },
              decoration: const InputDecoration(
                hintText: 'Phone',
                labelText: 'Phone',
                // errorText: 'Error message',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            TextFormField(
              controller: emailController,
              focusNode: emailFocus,
              onFieldSubmitted: (value) {
                if (value != '') {
                  passwordFocus.requestFocus();
                }
              },
              decoration: const InputDecoration(
                hintText: 'Email',
                labelText: 'Email',
                // errorText: 'Error message',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            TextFormField(
              controller: passwordController,
              focusNode: passwordFocus,
              decoration: const InputDecoration(
                hintText: 'Password',
                labelText: 'Password',
                // errorText: 'Error message',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              child: const Text('Sign Up'),
              onPressed: () {
                // singIn();
              },
            ),
            Flexible(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('Already have an account?'),
                      TextButton(
                          onPressed: () {
                            Navigator.popUntil(
                                context, (route) => route.isFirst);
                            Navigator.pushReplacement(
                                context,
                                CupertinoPageRoute(
                                    fullscreenDialog: true,
                                    builder: (context) => const LoginPage()));
                          },
                          child: const Text('Login'))
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
