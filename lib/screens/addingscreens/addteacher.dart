import 'package:flutter/material.dart';

import '../../widget/button.dart';
import '../../widget/customedittext.dart';


class AddTeacher extends StatefulWidget {
  const AddTeacher({super.key});

  @override
  State<AddTeacher> createState() => _AddTeacherState();
}

class _AddTeacherState extends State<AddTeacher> {

  TextEditingController subject = TextEditingController();
  TextEditingController name = TextEditingController();
  TextEditingController age = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController email = TextEditingController();

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
              child: Text('Fill the form for\nthe new teacher',style: TextStyle(
                  fontSize: 20,
                  // color: Theme.of(context).colorScheme.inversePrimary,
                  fontWeight: FontWeight.bold)),
            ),
            CustomEditText(controller: name, hint: 'Full name', label: 'Enter Full name'),
            CustomEditText(controller: age, hint: 'Age', label: 'Enter Age'),
            CustomEditText(controller: phone, hint: 'Phone', label: 'Enter Phone'),
            CustomEditText(controller: subject, hint: 'Subject', label: 'Enter subject'),
            CustomButton(title: 'Submit', onTap: (){

            }),
          ],
        ),
      ),
    );
  }
}
