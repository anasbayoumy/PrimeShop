import 'package:flutter/material.dart';

class CustomtextfieldNorm extends StatefulWidget {
  final String hint;
  final Widget prefixIcon;
  final TextEditingController myController;
  final String? Function(String?) valid;
  final bool isNumber;
  const CustomtextfieldNorm({
    super.key,
    required this.hint,
    required this.prefixIcon,
    required this.myController,
    required this.valid,
    required this.isNumber,
  });

  @override
  _CustomtextfieldNormState createState() => _CustomtextfieldNormState();
}

class _CustomtextfieldNormState extends State<CustomtextfieldNorm> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: widget.isNumber
          ? const TextInputType.numberWithOptions(decimal: true)
          : TextInputType.text,
      validator: widget.valid,
      decoration: InputDecoration(
        prefixIcon: widget.prefixIcon,
        hintText: widget.hint,
        contentPadding:
            const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(13),
        ),
      ),
    );
  }
}
