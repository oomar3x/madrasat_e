import 'dart:developer';

import 'package:flutter/material.dart';

class ParentSignUp2 extends StatefulWidget {
  const ParentSignUp2({super.key});

  @override
  _ParentSignUp2State createState() => _ParentSignUp2State();
}

class _ParentSignUp2State extends State<ParentSignUp2> {
  final _formKey = GlobalKey<FormState>();

  TextEditingController fullNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController userIdController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image:
                      AssetImage("assets/images/whitebackgroundpicture.jpg"))),
          margin: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Form(
              key: _formKey,
              child: Column(
                children: <Widget>[
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
                                "Your ward's Information")),
                      )
                    ],
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          TextFormField(
                            controller: fullNameController,
                            decoration:
                                const InputDecoration(hintText: 'Full name'),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Please enter your full name";
                              }
                              return null;
                            },
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 30.0),
                            child: TextFormField(
                              controller: emailController,
                              decoration: const InputDecoration(
                                  hintText: 'Email address'),
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return "Please enter your email";
                                }
                                return null;
                              },
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 30.0),
                            child: TextFormField(
                              controller: userIdController,
                              decoration:
                                  const InputDecoration(hintText: 'User ID'),
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return "Please enter your UserID";
                                }
                                return null;
                              },
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 30.0),
                            child: TextFormField(
                              controller: passwordController,
                              decoration:
                                  const InputDecoration(hintText: 'Password'),
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return "Please enter password";
                                }
                                if (value.length < 8) {
                                  return "Password should be more than 8 characters";
                                }
                                if (value != confirmPasswordController.text) {
                                  return "Password does not match";
                                }
                                return null;
                              },
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 30.0),
                            child: TextFormField(
                              controller: confirmPasswordController,
                              decoration: const InputDecoration(
                                  hintText: 'Confirm Password'),
                              validator: (value) {
                                if (value != passwordController.text) {
                                  return "Password does not match";
                                }
                                return null;
                              },
                            ),
                          ),
                          Padding(
                              padding: const EdgeInsets.only(
                                  top: 100.0, bottom: 200.0),
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
                                      child: const Text('Sign Up')))),
                        ],
                      ),
                    ),
                  ),
                ],
              )),
        ),
      ),
    );
  }

  void onPressedSubmit(BuildContext context) {
    if (_formKey.currentState!.validate()) {
      log("Name ${fullNameController.text}");
      log("Email ${emailController.text}");
      log("User ID ${userIdController.text}");
      log("Password ${passwordController.text}");
      log("Confirm password ${confirmPasswordController.text}");
    }
  }
}
