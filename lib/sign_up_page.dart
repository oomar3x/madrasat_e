import 'package:flutter/material.dart';
import 'package:madrasat_e_project/parent_sign_up_page.dart';
import 'package:madrasat_e_project/student_sign_up_page.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Center(
        child: SingleChildScrollView(
          child: Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
              "assets/images/whitebackgroundpicture.jpg",
            ))),
            margin:
                const EdgeInsets.only(bottom: 100.0, left: 20.0, right: 20.0),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Padding(
                      padding: const EdgeInsets.only(top: 50.0),
                      child: Image.asset('assets/images/bookblack2.jpg')),
                  const Text(
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold),
                    'MADRASAT - E',
                    textDirection: TextDirection.ltr,
                  ),
                  const Text(
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 15.0,
                          fontWeight: FontWeight.normal),
                      'Bringing Islamic knowledge to your fingertips',
                      textDirection: TextDirection.ltr),
                  Padding(
                      padding: const EdgeInsets.symmetric(vertical: 50.0),
                      child: Container(
                        height: 250.0,
                        width: 250.0,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.blue, width: 2.0),
                          borderRadius: BorderRadius.circular(20.0),

                          //image: const DecorationImage(
                          //fit: BoxFit.contain,
                          //image:
                          //AssetImage('assets/images/graduanticon.jpg'),
                          //)
                          //colorFilter: ColorFilter.mode(
                          // Colors.blue, BlendMode.dstATop)),
                          //color: Colors.blue,
                          //shape: BoxShape.rectangle,
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 30.0, bottom: 30.0),
                              child: Image.asset(
                                "assets/images/graduanticon.jpg",
                                fit: BoxFit.contain,
                                height: 100.0,
                                width: 100.0,
                              ),
                            ),
                            TextButton(
                                onPressed: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) =>
                                          const StudentSignUp()));
                                },
                                child: const Text(
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15.0),
                                    'Sign Up as a Student')),
                          ],
                        ),
                      )),
                  const SizedBox(
                    height: 50,
                  ),
                  Container(
                    height: 250.0,
                    width: 250.0,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.blue, width: 2.0),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding:
                              const EdgeInsets.only(top: 10.0, bottom: 10.0),
                          child: Image.asset(
                            "assets/images/parentimage.jpg",
                            fit: BoxFit.contain,
                            height: 150.0,
                            width: 150.0,
                          ),
                        ),
                        TextButton(
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => const ParentSignUp()));
                            },
                            child: const Text(
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15.0),
                                'Sign Up as a Parent')),
                      ],
                    ),
                  ),
                ]),
          ),
        ),
      ),
    );
  }
}
