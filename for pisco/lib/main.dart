import 'package:flutter/material.dart';
import 'package:ischool/screens/school/schoolhome.dart';
import 'package:ischool/screens/superadmin/adminhome.dart';
import 'package:ischool/widget/button.dart';
import 'package:ischool/widget/customedittext.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.purpleAccent,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  TextEditingController emailctrlr = TextEditingController();
  TextEditingController passctrlr = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('Ischool'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          CustomEditText(
            controller: emailctrlr,
            hint: 'Email',
            label: 'Enter your email',
          ),

          CustomEditText(
            controller: passctrlr,
            hint: 'Password',
            label: 'Enter your Password',
          ),

          CustomButton(title: 'Login As Admin',
            onTap: (){
            Get.to(TeacherHome());
          },),

          CustomButton(title: 'Login As School',onTap: (){
            Get.to(SchoolHome());
          },),
          // CustomButton(title: 'Login As Student',onTap: (){
          //   Get.to(StudentHome());
          // },),

        ],
      )
    );
  }
}
