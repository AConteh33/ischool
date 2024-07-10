import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../model/schoolmodel.dart';

class DataController extends GetxController {

  SchoolModel? schoolmodel;
  List<SchoolModel>? schoolmodellist = [];
  FirebaseFirestore fire = FirebaseFirestore.instance;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    getSchoolData();
  }

  getSchoolData() async {

    schoolmodellist!.clear();

    final collection = FirebaseFirestore.instance.collection('school');
    final querySnapshot = await collection.get();

    List<Map<String, dynamic>> dataList = [];

    for (var doc in querySnapshot.docs) {
      print('This is the date required');

      dataList.add(doc.data() as Map<String, dynamic>);
    }

    print('Data collection is completed');

    for (var element in dataList) {
      // print('Adding data : ' + element['id']);

      schoolmodellist?.add(SchoolModel(name: element['name'],
          email: element['email'], city: element['city'],
          country: element['country'], desc: element['desc']
          , owneremail: element['owneremail'],
          ownername: element['ownername'],
          region: element['region'],
          studentcoutns: element['studentcoutns'],
          studentemail: element['studentemail'], id: element['id']));


    }


    update();


  }

  setSchoolData({required SchoolModel data}) async {
    fire.collection('schools').doc(data.id).set(
      {
        'studentemail':data.studentemail,
        'studentcoutns':data.studentcoutns,
        'ownername':data.ownername,
        'owneremail':data.owneremail,
        'desc':data.desc,
        'name':data.name,
        'region':data.region,
        'country':data.country,
        'email':data.email,
        'city':data.city,
        'id':data.id,
      }
    );

    getSchoolData();

    update();

  }

}