import 'package:flutter/material.dart';


class CustomEditText extends StatefulWidget {
  CustomEditText({required this.controller,required this.hint,required this.label});
  String hint;
  String label;
  TextEditingController controller;

  @override
  State<CustomEditText> createState() => _CustomEditTextState();
}

class _CustomEditTextState extends State<CustomEditText> {

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        controller: widget.controller,
        decoration: InputDecoration(
          labelText: widget.label,
          hintText: widget.hint,
          border: const OutlineInputBorder(),
        ),
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Please ${widget.label}';
          }
          return null; // No error
        },
        // onSaved: (value) => setState(() => _name = value!),
      ),
    );
  }
}
