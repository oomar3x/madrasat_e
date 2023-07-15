import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
            child: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(
                    "assets/images/whitebackgroundpicture.jpg",
                  ))),
          margin: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Padding(
              padding: const EdgeInsets.all(30.0),
              child: Center(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Padding(
                      padding: const EdgeInsets.only(top: 30.0),
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
                      child: Image.asset('assets/images/qurans.jpg')),
                  const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15.0),
                      child: Text(
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15.0,
                              fontWeight: FontWeight.normal),
                          textAlign: TextAlign.justify,
                          'Madrasat - E aims at providing foundational and solid Islamic knowledge, morals and discipline for young muslim children with ease from their comfort zone.',
                          textDirection: TextDirection.ltr)),
                  Padding(
                      padding: const EdgeInsets.symmetric(vertical: 50.0),
                      child: SizedBox(
                          width: 250.0,
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30))),
                              onPressed: () =>
                                  debugPrint('ElevatedButton pressed'),
                              child: const Text('Sign in')))),
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
                          "Don't have an account?",
                          textDirection: TextDirection.ltr)),
                  TextButton(
                      onPressed: () => debugPrint('TextButton pressed'),
                      child: const Text(
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15.0),
                          'Sign Up')),
                ],
              ))),
        )));
  }
}
