import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import '../model/auth_data.dart';

String email = '';
String password = '';

class Auth_Controller extends GetxController{
  Rxn<AuthData> authData = Rxn<AuthData>();

  String email = '';
  String password = '';

  FirebaseAuth fireauth = FirebaseAuth.instance;
  FirebaseFirestore firedata = FirebaseFirestore.instance;
  RxBool signedin = false.obs;
  RxString role = ''.obs;

  // class Auth{
  //   final FirebaseAuth _firebaseAuth = firebaseAuth.instance;
  //   user? get currentUser => _firebaseAuth..currentUser;
  //
  // get password => null;
  //   Stream<(User?)> get authStateChanges => _firebaseAuth.authStateCHanges();
  //
  //   future<void> signinwithEmailAndPassword{(
  //   required String email,
  //   required String password,
  //   );} async {
  //      _firebaseAuth.createUserwithEmailAndPassword(
  //      String email,
  //      String password,
  //     );
  //   }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    Isignedin();
  }

  Isignedin(){

    String uid;

    if(fireauth.currentUser != null){
      uid = fireauth.currentUser!.uid;
      signedin.value = true;
      getuserdata(uid: uid);
    }else{
      signedin.value = false;
    }

    update();

    // return fireauth.currentUser!.uid;
  }

  getuserdata({uid}) async {

    // It's not working Right now.

    final usrdata = await firedata
        .collection('users')
        .doc(uid)
        .get();

    authData.value = AuthData(
        email: usrdata['email'],
        id: usrdata['id'],
        name: usrdata['name'],
        role: usrdata['role'],
        firstname: usrdata['firstname'],
        lastname: usrdata['lastname'],

    );

    update();

    // return authData;

  }
  //updated on 5/26/2024
  Future<void> signOut(BuildContext context) async {
    try {
      await FirebaseAuth.instance.signOut();
      // Navigate back to the registration screen after logging out
      // Navigator.pushReplacement(
      //   context,
      //   MaterialPageRoute(builder: (context) =>  (const WelcomeScreen))
      // );
    } on FirebaseAuthException catch (e) {
      Get.snackbar('Error', e.message ?? 'Unknown error');
      return;
    }
  }

  Future<User?> signInWithEmailAndPassword(String email, String password) async {
    try {
      UserCredential userCredential =
      await fireauth.signInWithEmailAndPassword(
          email: email, password: password);
      getuserdata(uid: userCredential.user!.uid);
      return userCredential.user;
    } on FirebaseAuthException catch (e) {
      Get.snackbar('Error', e.message ?? 'Unknown error');
      return null;
    }
  }

  CreateAccount({
    firstname,
    lastname,
    phone,
    email,
    password,
    role,
  }) async {

    print(' Auth : 1 ' + email + ' ' + password);

    UserCredential credential =
    await fireauth.createUserWithEmailAndPassword(
      email: email,
       password: password
      );

      print('Auth : 2');

    if(credential.user == null){
print('Auth : 3');
      return false;

    }else{

      firedata.collection('users')
          .doc(credential.user!.uid)
          .set({
        'email':email,
        'id': credential.user!.uid,
        'name': firstname + ' ' + lastname,
        'first': firstname,
        'last': lastname,
        'role': role,
      });

      authData.value = AuthData(
        email: email,
        id: credential.user!.uid,
        name: firstname + ' ' + lastname,
        role: role,
        firstname: firstname,
        lastname: lastname,
    );
    
    update();
    Isignedin();
    
    return true;
      
      }
  
    }


}