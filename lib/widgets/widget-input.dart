import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class InputTexto extends StatelessWidget {
  final String rotulo;
  final String label;
  TextEditingController controller;

  InputTexto(this.rotulo, this.label, {required this.controller});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      style: TextStyle(
        color: Colors.black,
        backgroundColor: Colors.grey,
      ),
      decoration: InputDecoration(
        labelText: rotulo,
        hintText: label,
      ),
      maxLength: 10,
    );
  }
}
