import 'package:flutter/material.dart';
import 'package:ischool/screens/addingscreens/addclass.dart';
import 'package:ischool/screens/addingscreens/addteacher.dart';
import 'package:ischool/widget/button.dart';
import 'package:get/get.dart';
import '../../widget/list_item_school.dart';
import '../../widget/statusbar.dart';
import '../addingscreens/addstudent.dart';
import '../addingscreens/addsubject.dart';


class SchoolHome extends StatefulWidget {
  const SchoolHome({super.key});

  @override
  State<SchoolHome> createState() => _SchoolHomeState();
}

class _SchoolHomeState extends State<SchoolHome> {

  List<String > listofdata = [
    'Ibrahim'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('School home'),
        actions: const [
          Icon(Icons.settings),
        ],
      ),
      body: Column(
        children: [
          Row(
            children: [
              Expanded(
                  flex: 1,
                  child: StatusBar(title: '0', subtitle: 'Teacher', onTap: (){})),
              Expanded(
                  flex: 1,
                  child: StatusBar(title: '0',subtitle: 'Subject', onTap: (){})),
            ],
          ),
          Row(
            children: [
              Expanded(
                  flex: 1,
                  child: StatusBar(title: '0', subtitle: 'Student', onTap: (){})),
              Expanded(
                  flex: 1,
                  child: StatusBar(title: '0',subtitle: 'Class', onTap: (){})),
            ],
          ),
          const Divider(),
          const Text('List of Students and And Grades'),
          const Divider(),
          Row(
            children: [
              Expanded(
                  flex: 1,
                  child: CustomButton(title: 'Add Subject', onTap: (){
                    Get.to(AddSubject());
                  })),
              Expanded(
                  flex: 1,
                  child: CustomButton(title: 'Add Student', onTap: (){
                    Get.to(AddStudent());
                  })),
            ],
          ),
          Row(
            children: [
              Expanded(
                  flex: 1,
                  child: CustomButton(title: 'Add Class', onTap: (){
                    Get.to(AddClass());
                  })),
              Expanded(
                  flex: 1,
                  child: CustomButton(title: 'Add Teacher', onTap: (){
                    Get.to(AddTeacher());
                  })),
            ],
          ),

          // Expanded(
          //     child: ListView.builder(
          //         itemCount: listofdata.length,
          //         itemBuilder: (context,index){
          //
          //           return ListItemSchool(
          //               title:listofdata[index]
          //           );
          //
          //         }))
        ],
      ),
    );
  }
}
