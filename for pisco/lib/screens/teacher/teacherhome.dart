import 'package:flutter/material.dart';
import 'package:ischool/widget/button.dart';
import 'package:get/get.dart';
import '../../widget/list_item.dart';
import '../../widget/list_item_school.dart';


class TeacherHome extends StatefulWidget {
  const TeacherHome({super.key});

  @override
  State<TeacherHome> createState() => _TeacherHomeState();
}

class _TeacherHomeState extends State<TeacherHome> {

  List<String > listofdata = [
    'Just a test'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              Expanded(
                  flex: 1,
                  child: CustomButton(title: 'Add Subject', onTap: (){

                  })
              ),
              Expanded(
                  flex: 1,
                  child: CustomButton(title: 'Add Student', onTap: (){})
              ),
            ],
          ),
          const Divider(),
          const Text('List of schools and owners'),
          const Divider(),
          Expanded(
              child: ListView.builder(
                itemCount: listofdata.length,
                  itemBuilder: (context,index){

                  return ListItemSchool(title:listofdata[index]);

                }
                )
          ),
        ],
      ),
    );
  }
}
