import 'package:flutter/material.dart';
import 'package:ischool/screens/superadmin/addschool.dart';
import 'package:ischool/widget/button.dart';
import 'package:get/get.dart';
import '../../widget/statusbar.dart';


class TeacherHome extends StatefulWidget {
  const TeacherHome({super.key});

  @override
  State<TeacherHome> createState() => _TeacherHomeState();
}

class _TeacherHomeState extends State<TeacherHome> {

  List<String> listofdata = ['Micheal','Channel'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Admin Portal'),
        actions: [
          Icon(Icons.settings),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            children: [
              Expanded(
                  flex: 1,
                  child: StatusBar(title: '0', subtitle: 'Student', onTap: (){})),
              Expanded(
                  flex: 1,
                  child: StatusBar(title: '0',subtitle: 'Schools', onTap: (){})),
            ],
          ),
          Row(
            children: [
              Expanded(
                  flex: 1,
                  child: CustomButton(title: 'Add School', onTap: (){
                    Get.to(const AddSchool());
                  })),
              Expanded(
                  flex: 1,
                  child: CustomButton(title: 'Management', onTap: (){

                  })),
            ],
          ),
          Divider(),
          Text('List of schools and owners'),
          Divider(),
          Expanded(
              child: ListView.builder(
                  itemCount: listofdata.length,
                  itemBuilder: (context,index){
                    return Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: Card(
                        child: ListTile(
                          leading: Icon(Icons.person),
                          title: Text(listofdata[index]),
                          subtitle: Text('School : Germantry'),
                        ),
                      ),
                    );
                  }))
        ],
      ),
    );
  }
}
