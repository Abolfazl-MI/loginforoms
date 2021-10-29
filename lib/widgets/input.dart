import 'package:flutter/material.dart';

class InputWidget extends StatelessWidget {
  TextEditingController? controller;
  String? lable;
  IconData? icon;
  bool? passwordFeild;
  InputWidget(
      {this.controller, this.icon, this.lable, this.passwordFeild = false});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: TextFormField(
        // obscureText: ,

        obscureText: passwordFeild!,
        controller: controller,
        decoration: InputDecoration(
            prefixIcon: Icon(icon),
            focusedBorder: const UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.red)),
            hintText: lable,
            labelStyle: TextStyle(color: Colors.grey, fontSize: 14)),
      ),
    );
  }
}
