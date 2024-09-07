import 'package:flutter/material.dart';

class CustomtextfieldPass extends StatefulWidget {
  final String hint;
  final bool visability;
  final TextEditingController myController;
  final String? Function(String?) valid;
  const CustomtextfieldPass(
      {super.key,
      required this.hint,
      required this.visability,
      required this.myController,
      required this.valid});

  @override
  _CustomtextfieldPassState createState() => _CustomtextfieldPassState();
}

class _CustomtextfieldPassState extends State<CustomtextfieldPass> {
  late bool _isVisible;

  @override
  void initState() {
    super.initState();
    _isVisible = widget.visability;
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: widget.valid,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.key_outlined),
        suffixIcon: IconButton(
          icon: Icon(_isVisible ? Icons.visibility : Icons.visibility_off),
          onPressed: () {
            setState(() {
              _isVisible = !_isVisible;
            });
          },
        ),
        hintText: widget.hint,
        contentPadding:
            const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(13),
        ),
      ),
      obscureText: _isVisible,
    );
  }
}
