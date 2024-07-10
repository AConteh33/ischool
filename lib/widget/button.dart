import 'package:flutter/material.dart';


class CustomButton extends StatefulWidget {
  CustomButton({required this.title,required this.onTap});
  String title;
  VoidCallback onTap;

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: FloatingActionButton.extended(
        onPressed: widget.onTap,
        label: Text(widget.title),
      ),
    );
  }
}
