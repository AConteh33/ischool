import 'package:flutter/material.dart';

class ListItemSchool extends StatefulWidget {
  ListItemSchool({required this.title});
  String title;

  @override
  State<ListItemSchool> createState() => _ListItemSchoolState();
}

class _ListItemSchoolState extends State<ListItemSchool> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: Card(
        child: ListTile(
          leading: Icon(Icons.person),
          title: Text(widget.title),
          subtitle: Text('Grade : 5'),
        ),
      ),
    );
  }
}
