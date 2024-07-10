import 'package:flutter/material.dart';

import '../../widget/button.dart';
import '../../widget/customedittext.dart';


class AddSubject extends StatefulWidget {
  const AddSubject({super.key});

  @override
  State<AddSubject> createState() => _AddSubjectState();
}

class _AddSubjectState extends State<AddSubject> {

  TextEditingController subject = TextEditingController();
  TextEditingController chapters = TextEditingController();

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
              child: Text('Fill the form for\nthe new subject',style: TextStyle(
                  fontSize: 20,
                  // color: Theme.of(context).colorScheme.inversePrimary,
                  fontWeight: FontWeight.bold)),
            ),
            CustomEditText(controller: subject, hint: 'Subject', label: 'Enter subject'),
            CustomEditText(controller: chapters, hint: 'Chapters', label: 'Enter Chapters'),
            CustomButton(title: 'Submit', onTap: (){

            }),
          ],
        ),
      ),
    );
  }
}
