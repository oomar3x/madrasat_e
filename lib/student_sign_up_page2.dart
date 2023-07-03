import 'dart:developer';

import 'package:flutter/material.dart';

class StudentSignUp2 extends StatefulWidget {
  const StudentSignUp2({super.key});

  @override
  _StudentSignUp2State createState() => _StudentSignUp2State();
}

class _StudentSignUp2State extends State<StudentSignUp2> {
  final _formKey = GlobalKey<FormState>();

  String fullname = '';
  String email = '';
  String genderStatus = 'male';
  String parentName = '';
  int mobile = 0;
  String parentEmail = '';
  String nationality = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(
      //elevation: 10.0,
      //backgroundColor: Colors.white,
      //title: const Center(
      //child: Text(
      //style: TextStyle(
      //color: Colors.black,
      //fontSize: 15.0,
      //fontWeight: FontWeight.bold),
      //"Biodata")),
      //),
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image:
                      AssetImage('assets/images/whitebackgroundpicture.jpg'))),
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
                          "Biodata"),
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
                            decoration:
                                const InputDecoration(hintText: 'Full name'),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Please enter full name';
                              }
                              return null;
                            },
                            onSaved: (value) {
                              setState(() {
                                fullname = value!;
                              });
                            },
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 30.0),
                            child: TextFormField(
                              decoration: const InputDecoration(
                                  hintText: 'Email address'),
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Please enter email address';
                                }
                                return null;
                              },
                              onSaved: (newValue) {
                                setState(() {
                                  email = newValue!;
                                });
                              },
                            ),
                          ),
                          Padding(
                              padding: const EdgeInsets.only(top: 50.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: const [
                                  Text(
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 15.0,
                                          fontWeight: FontWeight.normal),
                                      "Gender",
                                      textDirection: TextDirection.ltr),
                                ],
                              )),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Expanded(
                                child: RadioListTile(
                                  title: const Text('Male'),
                                  value: 'male',
                                  groupValue: genderStatus,
                                  onChanged: (value) {
                                    setState(() {
                                      genderStatus = value!;
                                    });
                                  },
                                ),
                              ),
                              Expanded(
                                child: RadioListTile(
                                  title: const Text('Female'),
                                  value: 'female',
                                  groupValue: genderStatus,
                                  onChanged: (value) {
                                    setState(() {
                                      genderStatus = value!;
                                    });
                                  },
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 30.0),
                            child: TextFormField(
                              decoration: const InputDecoration(
                                  hintText: "Parent's name"),
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return "Please enter parent's name";
                                }
                                return null;
                              },
                              onSaved: (newValue) {
                                setState(() {
                                  parentName = newValue!;
                                });
                              },
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 30.0),
                            child: TextFormField(
                              decoration: const InputDecoration(
                                  hintText: "Parent's mobile"),
                              keyboardType: TextInputType.phone,
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return "Please enter parent's mobile number";
                                }
                                return null;
                              },
                              onSaved: (value) {
                                setState(() {
                                  mobile = int.tryParse(value!)!;
                                });
                              },
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 30.0),
                            child: TextFormField(
                              decoration: const InputDecoration(
                                  hintText: "Parent's email"),
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return "Please enter parent's email";
                                }
                                return null;
                              },
                              onSaved: (newValue) {
                                setState(() {
                                  parentEmail = newValue!;
                                });
                              },
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 30.0),
                            child: TextFormField(
                              decoration: const InputDecoration(
                                  hintText: "Nationality"),
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return "Please enter nationality";
                                }
                                return null;
                              },
                              onSaved: (newValue) {
                                setState(() {
                                  nationality = newValue!;
                                });
                              },
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(top: 50.0, bottom: 100.0),
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
                                  child: const Text('Next')),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }

  void onPressedSubmit(BuildContext context) {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();

      log("Name $fullname");
      log("Email $email");
      log("Gender Status $genderStatus");
      log("Mobile number $mobile");
      log("Parent name $parentName");
      log("Parent Email $parentEmail");
      log("Nationality $nationality");
    }
  }
}
