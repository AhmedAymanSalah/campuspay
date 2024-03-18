import 'package:flutter/material.dart';

enum TextFieldType { email, password }

class CustomTextField extends StatefulWidget {
  final TextFieldType type;
  final String? labelText;
  final String? hintText;
  final IconData? prefixIcon;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final Function(String)? onchage;

  const CustomTextField({
    super.key,
    required this.type,
    this.labelText,
    this.prefixIcon,
    this.hintText,
    this.controller,
    this.validator,
    this.onchage, required Null Function(dynamic data) onchange,
  });

  @override
  // ignore: library_private_types_in_public_api
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool _obscureText = true;

  void _togglePasswordVisibility() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: TextFormField(
        onChanged: widget.onchage,
        validator: widget.validator,
        controller: widget.controller,
        style: const TextStyle(
          fontFamily: "Roboto Slab",
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
        obscureText:
            widget.type == TextFieldType.password ? _obscureText : false,
        decoration: InputDecoration(
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
          //********** ده شكل البوردر الي عليه فوكس  ************* */
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade400),
          ),
          // ********* ده لونه من جوا ولازم تبقي ترو **************** //
          fillColor: Colors.grey.shade100,
          filled: true,
          hintText: widget.hintText,
          labelText: widget.labelText,
          labelStyle: const TextStyle(
            fontFamily: "Roboto Slab",
            fontSize: 16,
          ),
          prefixIcon:
              widget.prefixIcon != null ? Icon(widget.prefixIcon) : null,
          suffixIcon: widget.type == TextFieldType.password
              ? GestureDetector(
                  onTap: _togglePasswordVisibility,
                  child: Icon(
                    _obscureText ? Icons.visibility : Icons.visibility_off,
                  ),
                )
              : null,
        ),
      ),
    );
  }
}
