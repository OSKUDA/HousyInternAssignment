import 'package:flutter/material.dart';

class SearchTextField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: Colors.black54,
      autofocus: true,
      decoration: InputDecoration(
        hintText: 'Enter your search',
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.black54),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.black54),
        ),
      ),
      onChanged: (value) {},
    );
  }
}
