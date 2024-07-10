import 'package:flutter/material.dart';
import 'package:school/controller/datacontroller.dart';
import 'package:school/model/schoolmodel.dart';
import 'package:school/widget/button.dart';
import 'package:get/get.dart';
import 'package:uuid/uuid.dart';
import '../../widget/customedittext.dart';

class AddSchool extends StatefulWidget {


  @override
  State<AddSchool> createState() => _AddSchoolState();
}

class _AddSchoolState extends State<AddSchool> {

  TextEditingController namecontroller = TextEditingController();
  TextEditingController desccontroller = TextEditingController();
  TextEditingController citycontroller = TextEditingController();
  TextEditingController regioncontroller = TextEditingController();
  TextEditingController countrycontroller = TextEditingController();
  TextEditingController ownernamecontroller = TextEditingController();
  TextEditingController owneremailcontroller = TextEditingController();
  TextEditingController studentcountscontroller = TextEditingController();
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passcontroller = TextEditingController();
  DataController datactrlr = Get.put(DataController());
  final _formkey = GlobalKey<FormState>();

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
          child: Form(
            key: _formkey,
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
                  controller: namecontroller,
                  hint: 'School name',
                  label: 'Enter your School name',
                ),
                CustomEditText(
                  controller: desccontroller,
                  hint: 'This School Provides this classes and we are the integrated with the neighborhood.',
                  label: 'Enter a Description',
                ),
                CustomEditText(
                  controller: citycontroller,
                  hint: 'City',
                  label: 'Enter the City',
                ),
                CustomEditText(
                  controller: regioncontroller,
                  hint: 'Region',
                  label: 'Enter the region',
                ),
                CustomEditText(
                  controller: countrycontroller,
                  hint: 'Country',
                  label: 'Enter the Country',
                ),
                CustomEditText(
                  controller: ownernamecontroller,
                  hint: 'Owner',
                  label: 'Enter the Owner name',
                ),
                CustomEditText(
                  controller: owneremailcontroller,
                  hint: 'Owner email',
                  label: 'Enter the Owner email',
                ),
                CustomEditText(
                  controller: studentcountscontroller,
                  hint: 'Number of students',
                  label: 'Enter the Student counts',
                ),
            CustomEditText(
                  controller: emailcontroller,
                  hint: 'Email',
                  label: 'Enter the Email',
                ),
            CustomEditText(
                  controller: passcontroller,
                  hint: 'Password',
                  label: 'Enter the Password',
                ),
                CustomButton(
                    title: 'Submit',
                    onTap: (){
                      var uuid = Uuid();

                      // Generate a v1 (time-based) id
                      if (_formkey.currentState!.validate()) {
                        var v1 = uuid.v1();
                        datactrlr.setSchoolData(data: SchoolModel(
                            id: v1,
                            name: namecontroller.text,
                            email: emailcontroller.text,
                            city: citycontroller.text,
                            country: countrycontroller.text,
                            desc: desccontroller.text,
                            owneremail: owneremailcontroller.text,
                            ownername: ownernamecontroller.text,
                            region: regioncontroller.text,
                            studentcoutns: studentcountscontroller.text,
                            studentemail: studentcountscontroller.text
                        ));

                        Get.back();

                      }

                    }),

              ],
            ),
          ),
        ),
      )
    );
  }
}
