import 'package:flutter/material.dart';

class LoadingScreen extends StatelessWidget {
  const LoadingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.blue[900],
      child: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                opacity: 0.5,
                fit: BoxFit.fill,
                image: AssetImage("assets/images/whitebackgroundpicture.jpg"))),
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset('assets/images/bookcolor.JPG'),
            const Text(
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 40.0,
                  fontWeight: FontWeight.bold),
              'MADRASAT - E',
              textDirection: TextDirection.ltr,
            ),
            const Text(
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 15.0,
                    fontWeight: FontWeight.normal),
                'Bringing Islamic knowledge to your fingertips',
                textDirection: TextDirection.ltr),
          ],
        )),
      ),
    );
  }
}
