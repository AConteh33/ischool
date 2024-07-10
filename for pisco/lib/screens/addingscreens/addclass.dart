import 'package:flutter/material.dart';
import 'package:ischool/widget/button.dart';
import 'package:ischool/widget/customedittext.dart';

import '../../widget/app_ba.dart';

class AddClass extends StatefulWidget {
  const AddClass({super.key});

  @override
  State<AddClass> createState() => _AddClassState();
}

class _AddClassState extends State<AddClass> {

  TextEditingController gradectrl = TextEditingController();
  TextEditingController homectrl = TextEditingController();

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
              child: Text('Fill the form for\nthe new class room',style: TextStyle(
                  fontSize: 20,
                  // color: Theme.of(context).colorScheme.inversePrimary,
                  fontWeight: FontWeight.bold)),
            ),
            CustomEditText(controller: gradectrl, hint: 'Grade', label: 'Enter Grade'),
            CustomEditText(controller: gradectrl, hint: 'Grade', label: 'Enter homeroom'),
            CustomButton(title: 'Submit', onTap: (){

            }),
          ],
        ),
      ),
    );
  }
}
