import 'package:flutter/material.dart';

import '../../widget/button.dart';
import '../../widget/customedittext.dart';

class AddStudent extends StatefulWidget {
  const AddStudent({super.key});

  @override
  State<AddStudent> createState() => _AddStudentState();
}

class _AddStudentState extends State<AddStudent> {
  TextEditingController name = TextEditingController();
  TextEditingController age = TextEditingController();
  TextEditingController grade = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController parentphone = TextEditingController();
  TextEditingController parent = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text('Add a class'),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text('Fill the form for\nthe new student',style: TextStyle(
                  fontSize: 20,
                  // color: Theme.of(context).colorScheme.inversePrimary,
                  fontWeight: FontWeight.bold)),
            ),
            CustomEditText(controller: name, hint: 'name', label: 'Enter subject'),
            CustomEditText(controller: age, hint: 'age', label: 'Enter Chapters'),
            CustomEditText(controller: grade, hint: 'grade', label: 'Enter subject'),
            CustomEditText(controller: phone, hint: 'phone', label: 'Enter subject'),
            CustomEditText(controller: parentphone, hint: 'Parent Phone', label: 'Enter Parent Phone'),
            CustomEditText(controller: parent, hint: 'Parent', label: 'Enter parent'),
            CustomButton(title: 'Submit', onTap: (){

            }),
          ],
        ),
      ),
    );
  }
}
