import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controller/datacontroller.dart';
import '../../widget/button.dart';
import '../../widget/statusbar.dart';
import 'addschool.dart';


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
        actions: const [
          Icon(Icons.settings),
        ],
      ),
      body: GetBuilder<DataController>(
        init: DataController(),
        builder: (data) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: [
                  Expanded(
                      flex: 1,
                      child: StatusBar(title: '0', subtitle: 'Student', onTap: (){})),
                  Expanded(
                      flex: 1,
                      child: StatusBar(
                          title: data.schoolmodellist!.length.toString(),
                          subtitle: 'Schools',
                          onTap: (){}
                      ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                      flex: 1,
                      child: CustomButton(title: 'Add School', onTap: (){
                        Get.to(AddSchool());
                      })),
                  Expanded(
                      flex: 1,
                      child: Center(
                        child: CustomButton(title: 'Management', onTap: (){

                        }),
                      )),
                ],
              ),
              const Divider(),
              const Text('List of schools and owners'),
              const Divider(),
              Expanded(
                  child: ListView.builder(
                      itemCount: data.schoolmodellist!.length,
                      itemBuilder: (context,index){
                        return Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: Card(
                            child: ListTile(
                              leading: const Icon(Icons.person),
                              title: Text(data.schoolmodellist![index].ownername),
                              subtitle: Text('School : ${data.schoolmodellist![index].name}'),
                            ),
                          ),
                        );
                      }))
            ],
          );
        }
      ),
    );
  }
}
