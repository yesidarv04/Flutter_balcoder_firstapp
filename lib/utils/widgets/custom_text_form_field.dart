import 'package:flutter/material.dart';

class CustomTextFormField extends StatefulWidget {
  final TextEditingController? fieldController;
  final TextInputType? keyboardType;
  final String? labelText;
  final String? hintText;
  final String? Function(String?)? validator;

  const CustomTextFormField(
      {super.key,
      this.fieldController,
      this.keyboardType,
      this.labelText,
      this.hintText,
      this.validator});

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.fieldController,
      keyboardType: widget.keyboardType,
      decoration: InputDecoration(
        labelText: widget.labelText,
        hintText: widget.hintText,
      ),
      validator: widget.validator,
    );
  }
}
