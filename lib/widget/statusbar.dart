import 'package:flutter/material.dart';


class StatusBar extends StatefulWidget {

  StatusBar({
    required this.title,
    required this.subtitle,
    required this.onTap
  });

  String title;
  String subtitle;
  VoidCallback onTap;

  @override
  State<StatusBar> createState() => _StatusBarState();
}

class _StatusBarState extends State<StatusBar> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap,
      child: Container(
        color: Theme.of(context).colorScheme.inversePrimary,
        margin: const EdgeInsets.all(3),
        height: 100,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(widget.title,style: const TextStyle(fontSize: 20)),
            Text(widget.subtitle,style: const TextStyle(fontSize: 10),),
          ],
        ),
      ),
    );
  }
}
