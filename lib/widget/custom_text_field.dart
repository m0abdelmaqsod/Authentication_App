import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.controller,
    required this.hint,
    required this.icon,
  });

  final TextEditingController controller;
  final String hint;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      onTapOutside: (event) => FocusManager.instance.primaryFocus?.unfocus(),
      decoration: InputDecoration(
        fillColor: const Color(0x409E9E9E),
        filled: true,
        hintText: hint,
        prefixIcon: Icon(icon),
        border: OutlineInputBorder(borderSide: BorderSide.none),
      ),
    );
  }
}
