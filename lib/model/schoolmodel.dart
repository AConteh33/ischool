import 'package:flutter/material.dart';

class SchoolModel {
  String id;
  String name;
  String desc;
  String city;
  String region;
  String country;
  String ownername;
  String owneremail;
  String studentemail;
  String studentcoutns;
  String email;


  SchoolModel({
    required this.id,
    required this.name,
    required this.email,
    required this.city,
    required this.country,
    required this.desc,
    required this.owneremail,
    required this.ownername,
    required this.region,
    required this.studentcoutns,
    required this.studentemail
});
}