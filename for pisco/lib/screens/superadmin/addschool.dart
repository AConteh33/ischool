import 'package:flutter/material.dart';
import 'package:ischool/widget/button.dart';
import 'package:get/get.dart';
import '../../widget/customedittext.dart';

class AddSchool extends StatefulWidget {
  const AddSchool({super.key});

  @override
  State<AddSchool> createState() => _AddSchoolState();
}

class _AddSchoolState extends State<AddSchool> {

  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:
        Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Admin School'),
        actions: [
          Icon(Icons.settings),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text('Fill the form for\nthe new School',style: TextStyle(
                    fontSize: 20,
                    // color: Theme.of(context).colorScheme.inversePrimary,
                    fontWeight: FontWeight.bold)),
              ),
              CustomEditText(
                controller: controller,
                hint: 'School name',
                label: 'Enter your School name',
              ),
              CustomEditText(
                controller: controller,
                hint: 'This School Provides this classes and we are the integrated with the neighborhood.',
                label: 'Enter a Description',
              ),
              CustomEditText(
                controller: controller,
                hint: 'City',
                label: 'Enter the City',
              ),
              CustomEditText(
                controller: controller,
                hint: 'Region',
                label: 'Enter the region',
              ),
              CustomEditText(
                controller: controller,
                hint: 'Country',
                label: 'Enter the Country',
              ),
              CustomEditText(
                controller: controller,
                hint: 'Owner',
                label: 'Enter the Owner name',
              ),
              CustomEditText(
                controller: controller,
                hint: 'Owner email',
                label: 'Enter the Owner email',
              ),
              CustomEditText(
                controller: controller,
                hint: 'Number of students',
                label: 'Enter the Student counts',
              ),
          CustomEditText(
                controller: controller,
                hint: 'Email',
                label: 'Enter the Email',
              ),
          CustomEditText(
                controller: controller,
                hint: 'Password',
                label: 'Enter the Password',
              ),
              CustomButton(
                  title: 'Submit',
                  onTap: (){Get.back();}),

            ],
          ),
        ),
      )
    );
  }
}
