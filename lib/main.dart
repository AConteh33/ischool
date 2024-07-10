import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:school/firebase_options.dart';
import 'package:school/screens/school/schoolhome.dart';
import 'package:school/screens/superadmin/adminhome.dart';
import 'package:school/widget/button.dart';
import 'package:school/widget/customedittext.dart';
import 'package:get/get.dart';

import 'controller/authcontroller.dart';


void main() async {

  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(MyApp());

}

class MyApp extends StatelessWidget {

  // const MyApp({super.key});
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
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  // const MyHomePage({super.key, required this.title});


  // final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  TextEditingController emailctrlr = TextEditingController();
  TextEditingController passctrlr = TextEditingController();

  final _formkey = GlobalKey<FormState>();

  Auth_Controller authy = Get.put(Auth_Controller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Ischool'),
      ),
      body: Form(
        key: _formkey,
        child: Column(
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

            CustomButton(
              title: 'Login As Admin',
              onTap: () async{

                if (_formkey.currentState!.validate()) {
                  // Form is valid, proceed with form submission
                  // User? user = await authy.signInWithEmailAndPassword(emailctrlr.text, passctrlr.text);
                  // if(user?.uid == null && user?.uid == ''){
                  //   //Print something is wrong.
                  // }else{
                    Get.to(const TeacherHome());
                  // }

                }


            },),

            CustomButton(
              title: 'Login As School',
              onTap: (){
              if (_formkey.currentState!.validate()) {
                Get.to(SchoolHome());
              }
              },
            ),

            // CustomButton(title: 'Login As Student',onTap: (){
            //   Get.to(StudentHome());
            // },),

          ],
        ),
      )
    );
  }
}
