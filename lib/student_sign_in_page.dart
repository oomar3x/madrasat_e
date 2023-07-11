import 'package:flutter/material.dart';

class StudentSignInPage extends StatelessWidget {
  const StudentSignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
        child: SafeArea(
            child: Container(
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage(
                            'assets/images/whitebackgroundpicture.jpg'))),
                child: Column(children: [
                  Row(children: [
                    IconButton(
                        icon: const Icon(Icons.arrow_back), onPressed: () {}),
                    const Expanded(
                        child: Center(
                            child: Text(
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 15),
                                'Sign In as a Student')))
                  ]),
                  const SizedBox(height: 150),
                  Container(
                    height: 236,
                    width: 236,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                          color: Colors.blue,
                          width: 2.0,
                        )),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 50,
                          ),
                          child: Image.asset(
                            'assets/images/graduanticon.jpg',
                            height: 100,
                            width: 100,
                            fit: BoxFit.contain,
                          ),
                        ),
                        TextButton(
                            onPressed: () {},
                            child: const Text(
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15.0),
                                'Sign In as a Student'))
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30, right: 30),
                    child: Form(
                        child: Column(
                      children: [
                        TextFormField(
                          decoration:
                              const InputDecoration(labelText: 'User ID'),
                        ),
                        TextFormField(
                          decoration: const InputDecoration(
                            labelText: 'Password',
                            suffixText: 'Forgot?',
                          ), //suffix: Text("Forgot?")),
                        )
                      ],
                    )),
                  )
                ]))));
  }
}
