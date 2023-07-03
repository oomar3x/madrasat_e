import 'package:flutter/material.dart';

class StudentSignUp4 extends StatefulWidget {
  const StudentSignUp4({super.key});

  @override
  _StudentSignUp4State createState() => _StudentSignUp4State();
}

class _StudentSignUp4State extends State<StudentSignUp4> {
  List<String> mondayTimeOfClass = ['8am - 10am', '12pm - 2pm', '4pm - 5pm'];
  String? selectedMondayTimeOfClass;

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
            const SizedBox(height: 20),
            Row(
              children: const [
                Expanded(
                    child: Center(
                  child: Text(
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold),
                      "Select suitable time for classes"),
                )),
              ],
            ),
            Expanded(
                child: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(
                    height: 100,
                  ),
                  DropdownButton(
                    borderRadius: BorderRadius.circular(30),
                    hint: const Text(
                      style: TextStyle(color: Colors.blue),
                      "MONDAYS",
                    ),
                    value: selectedMondayTimeOfClass,
                    onChanged: (newValue) {
                      setState(() {
                        selectedMondayTimeOfClass = newValue!;
                      });
                    },
                    items: mondayTimeOfClass.map((mondayTimeOfClass) {
                      return DropdownMenuItem(
                        value: mondayTimeOfClass,
                        child: Text(mondayTimeOfClass),
                      );
                    }).toList(),
                  ),
                  const SizedBox(
                    height: 100,
                  ),
                  DropdownButton(
                    borderRadius: BorderRadius.circular(30),
                    hint: const Text(
                      style: TextStyle(color: Colors.blue),
                      "TUESDAYS",
                    ),
                    value: selectedMondayTimeOfClass,
                    onChanged: (newValue) {
                      setState(() {
                        selectedMondayTimeOfClass = newValue!;
                      });
                    },
                    items: mondayTimeOfClass.map((mondayTimeOfClass) {
                      return DropdownMenuItem(
                        value: mondayTimeOfClass,
                        child: Text(mondayTimeOfClass),
                      );
                    }).toList(),
                  ),
                  const SizedBox(
                    height: 100,
                  ),
                  DropdownButton(
                    borderRadius: BorderRadius.circular(30),
                    hint: const Text(
                      style: TextStyle(color: Colors.blue),
                      "WEDNESDAYS",
                    ),
                    value: selectedMondayTimeOfClass,
                    onChanged: (newValue) {
                      setState(() {
                        selectedMondayTimeOfClass = newValue!;
                      });
                    },
                    items: mondayTimeOfClass.map((mondayTimeOfClass) {
                      return DropdownMenuItem(
                        value: mondayTimeOfClass,
                        child: Text(mondayTimeOfClass),
                      );
                    }).toList(),
                  ),
                  const SizedBox(height: 100),
                  Padding(
                      padding: const EdgeInsets.only(bottom: 50),
                      child: SizedBox(
                        width: 150,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30))),
                            onPressed: () {},
                            child: const Text("Done")),
                      ))
                ],
              ),
            ))
          ],
        ),
      )),
    );
  }
}
