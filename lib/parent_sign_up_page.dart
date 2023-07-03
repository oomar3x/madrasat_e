import 'dart:developer';

import 'package:flutter/material.dart';

class ParentSignUp extends StatefulWidget {
  const ParentSignUp({super.key});

  @override
  _ParentSignUpState createState() => _ParentSignUpState();
}

class _ParentSignUpState extends State<ParentSignUp> {
  final _formKey = GlobalKey<FormState>();

  TextEditingController fullNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController mobileController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/whitebackgroundpicture.jpg"))),
        margin: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            Row(
              children: [
                IconButton(
                    onPressed: () {}, icon: const Icon(Icons.arrow_back)),
                const Expanded(
                  child: Center(
                    child: Text(
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold),
                        "Create a Parent's account"),
                  ),
                ),
              ],
            ),
            Form(
              key: _formKey,
              child: Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: <Widget>[
                      TextFormField(
                        controller: fullNameController,
                        decoration: const InputDecoration(
                            labelText: 'Full name',
                            hintText: 'Enter Full Name'),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please enter full name';
                          }
                          return null;
                        },
                      ),
                      TextFormField(
                        controller: emailController,
                        decoration:
                            const InputDecoration(hintText: 'Email address'),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please enter email';
                          }
                          return null;
                        },
                      ),
                      TextFormField(
                        controller: mobileController,
                        decoration:
                            const InputDecoration(hintText: 'Mobile number'),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please enter mobile number';
                          }
                          return null;
                        },
                      ),
                      TextFormField(
                        obscureText: true,
                        controller: passwordController,
                        decoration: const InputDecoration(hintText: 'Password'),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please enter password';
                          }
                          if (value.length < 8) {
                            return 'Password should be more than 8 characters';
                          }
                          if (value != confirmPasswordController.text) {
                            return 'Password does not match';
                          }
                          return null;
                        },
                      ),
                      TextFormField(
                        obscureText: true,
                        controller: confirmPasswordController,
                        decoration:
                            const InputDecoration(hintText: 'Confirm Password'),
                        validator: (value) {
                          if (value != passwordController.text) {
                            return 'Password does not match';
                          }
                          return null;
                        },
                      ),
                      Padding(
                          padding: const EdgeInsets.symmetric(vertical: 50.0),
                          child: SizedBox(
                              width: 150.0,
                              child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(30))),
                                  onPressed: () {
                                    onPressedSubmit(context);
                                  },
                                  child: const Text('Continue')))),
                      Row(children: const <Widget>[
                        Expanded(
                            child: Divider(
                          indent: 50.0,
                          color: Colors.black,
                        )),
                        Text('Or'),
                        Expanded(
                            child: Divider(
                          endIndent: 50.0,
                          color: Colors.black,
                        ))
                      ]),
                      const Padding(
                          padding: EdgeInsets.symmetric(vertical: 50.0),
                          child: Text(
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.normal),
                              "Continue with any of the following",
                              textDirection: TextDirection.ltr)),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            SizedBox(
                              width: 100.0,
                              child: OutlinedButton(
                                  style: OutlinedButton.styleFrom(
                                      side: const BorderSide(
                                        color: Colors.blue,
                                        width: 2.0,
                                      ),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(20.0))),
                                  onPressed: () =>
                                      debugPrint('OutlineButton Pressed'),
                                  child: (Image.asset(
                                    'assets/images/googlelogo.jpeg',
                                    height: 30,
                                    width: 30,
                                    fit: BoxFit.contain,
                                  ))),
                            ),
                            const SizedBox(
                              width: 50.0,
                            ),
                            SizedBox(
                              width: 100.0,
                              child: OutlinedButton(
                                  style: OutlinedButton.styleFrom(
                                      side: const BorderSide(
                                          color: Colors.blue, width: 2.0),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(20.0))),
                                  onPressed: () =>
                                      debugPrint('OutlineButton Pressed'),
                                  child: (Image.asset(
                                    'assets/images/applelogo.jpeg',
                                    height: 30,
                                    width: 30,
                                    fit: BoxFit.contain,
                                  ))),
                            )
                          ]),
                      //Row(children: <Widget>[
                      //IconButton(
                      //onPressed: () => debugPrint('OutlineButton Pressed'),
                      //icon: Image.asset('assets/images/googlelogo.jpeg'),
                      //iconSize: 50.0,
                      //)
                      //])
                      const Padding(
                          padding: EdgeInsets.only(top: 50.0),
                          child: Text(
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.normal),
                              "Already have an  account?",
                              textDirection: TextDirection.ltr)),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 50.0),
                        child: TextButton(
                            onPressed: () => debugPrint('TextButton pressed'),
                            child: const Text(
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15.0),
                                'Sign In')),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }

  void onPressedSubmit(BuildContext context) {
    if (_formKey.currentState!.validate()) {
      log("Name ${fullNameController.text}");
      log("Email ${emailController.text}");
      log("Mobile number ${mobileController.text}");
      log("Password ${passwordController.text}");
      log("Confrim password ${confirmPasswordController.text}");
    }
  }
}
