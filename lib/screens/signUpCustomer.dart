// ignore: file_names
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shop/screens/login.dart';

class SignUpCustomer extends StatefulWidget {
  const SignUpCustomer({Key? key}) : super(key: key);

  @override
  State<SignUpCustomer> createState() => _SignUpCustomerState();
}

class _SignUpCustomerState extends State<SignUpCustomer> {
  TextEditingController nameController = TextEditingController();
  TextEditingController cityController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController zipCodeController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  FocusNode name = FocusNode();
  FocusNode city = FocusNode();
  FocusNode zipCode = FocusNode();
  FocusNode emailFocus = FocusNode();
  FocusNode passwordFocus = FocusNode();

  String? selectedValue = '';
  int radioValue = 1;

  // double age = 0.0;
  // var selectedYear;

  // void showPicker() {
  //   showDatePicker(
  //           context: context,
  //           initialDate: DateTime(2000),
  //           firstDate: DateTime(1900),
  //           lastDate: DateTime.now())
  //       .then((DateTime? dt) {
  //     setState(() {
  //       selectedYear = dt!.year;
  //       calculatedAge();
  //     });
  //   });
  // }

  // void calculatedAge() {
  //   var now = DateTime.now().toString();
  //   var c = double.parse(now);
  //   setState(() {
  //     age = c - selectedYear;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Consumer Account'),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(15, 15, 10, 0),
        child: Column(
          children: [
            TextFormField(
              controller: nameController,
              onFieldSubmitted: (value) {
                if (value != '') {
                  name.requestFocus();
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
              controller: cityController,
              focusNode: name,
              onFieldSubmitted: (value) {
                if (value != '') {
                  city.requestFocus();
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
              controller: zipCodeController,
              keyboardType: TextInputType.phone,
              focusNode: city,
              onFieldSubmitted: (value) {
                if (value != '') {
                  zipCode.requestFocus();
                }
              },
              decoration: const InputDecoration(
                hintText: 'Zip code',
                labelText: 'Zip code',
                // errorText: 'Error message',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            TextFormField(
              controller: emailController,
              focusNode: zipCode,
              onFieldSubmitted: (value) {
                if (value != '') {
                  emailFocus.requestFocus();
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
              focusNode: emailFocus,
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
            Row(
              children: [
                const Text(
                  'Gender :',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  width: 10,
                ),
                Row(
                  children: [
                    const Text('Male'),
                    Radio(
                        value: 1,
                        groupValue: radioValue,
                        onChanged: (val) {
                          setState(() {
                            radioValue = val as int;
                          });
                        }),
                  ],
                ),
                Row(
                  children: [
                    const Text('Female'),
                    Radio(
                        value: 2,
                        groupValue: radioValue,
                        onChanged: (val) {
                          setState(() {
                            radioValue = val as int;
                          });
                        }),
                  ],
                ),
              ],
            ),
            Row(
              children: [
                const Text(
                  'Age :',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  width: 10,
                ),
                // Text('$age'),
                const SizedBox(
                  width: 10,
                ),
                OutlinedButton(
                    onPressed: () {
                      // showPicker();
                    },
                    child: const Text('Select the date of birth'))
              ],
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
