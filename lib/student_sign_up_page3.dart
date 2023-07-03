import 'package:flutter/material.dart';

class StudentSignUp3 extends StatefulWidget {
  const StudentSignUp3({super.key});

  @override
  _StudentSignUp3State createState() => _StudentSignUp3State();
}

class _StudentSignUp3State extends State<StudentSignUp3> {
  List<String> modeOfClass = ['Individual Class', 'Group Class'];
  String? selectedModeOfClass;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
            "assets/images/whitebackgroundpicture.jpg",
          ))),
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
                          "Specifications"),
                    ),
                  ),
                ],
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: <Widget>[
                      const SizedBox(
                        height: 20,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 30.0, bottom: 10.0),
                        child: Text(
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15.0,
                              fontWeight: FontWeight.normal),
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc id a pharetra senectus id bibendum consequat integer. Velit habitasse lobortis sagittis sagittis, venenatis duis mauris. Interdum lobortis aliquet sed gravida erat. Tellus nisl integer molestie enim ultrices.',
                          textDirection: TextDirection.ltr,
                        ),
                      ),
                      DropdownButton(
                        borderRadius: BorderRadius.circular(30),
                        hint: const Text("Preferred mode of class",
                            style: TextStyle(color: Colors.blue)),
                        value: selectedModeOfClass,
                        onChanged: (newValue) {
                          setState(() {
                            selectedModeOfClass = newValue!;
                          });
                        },
                        items: modeOfClass.map((modeOfClass) {
                          return DropdownMenuItem(
                            value: modeOfClass,
                            child: Text(modeOfClass),
                          );
                        }).toList(),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(
                          top: 150.0,
                        ),
                        child: Text(
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15.0,
                              fontWeight: FontWeight.normal),
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc id a pharetra senectus id bibendum consequat integer. Velit habitasse lobortis sagittis sagittis, venenatis duis mauris. Interdum lobortis aliquet sed gravida erat. Tellus nisl integer molestie enim ultrices.',
                          textDirection: TextDirection.ltr,
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      MaterialButton(
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                              side: const BorderSide(
                                  width: 2, color: Colors.blue),
                              borderRadius: BorderRadius.circular(30)),
                          color: Colors.white,
                          textColor: Colors.blue,
                          child: const Text('Select suitable time for classes'),
                          onPressed: () {
                            //onPressedSubmit(context);
                          }),
                      Padding(
                        padding:
                            const EdgeInsets.only(top: 200.0, bottom: 100.0),
                        child: SizedBox(
                          width: 150.0,
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30))),
                              onPressed: () => debugPrint('TextButton pressed'),
                              child: const Text('Sign Up')),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
