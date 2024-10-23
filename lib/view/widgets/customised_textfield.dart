import 'package:flutter/material.dart';



class CustomTextField extends StatelessWidget {
  final String validator;
  Color? fillColor;
  bool? filled;
  Color? focusedBoarderColor;
  Color? defaultBoarderColor;
  TextEditingController? controller;
  final String? labelText;
  final void Function(String?)? onChanged;
  final bool? obscureText;
  final TextStyle? labelStyle;
  final TextStyle? inputTextStyle;
  final TextInputType? keyBoardType;
  final Icon prefixIcon;
  Widget? suffixIconButton;
  bool? enabled;

  CustomTextField(
      {super.key,
      this.controller,
      this.fillColor,
      this.filled,
      this.defaultBoarderColor,
      this.focusedBoarderColor,
      required this.labelText,
      this.labelStyle,
      this.inputTextStyle,
      this.keyBoardType,
      required this.prefixIcon,
      this.obscureText,
      this.suffixIconButton,
      this.enabled,
      this.onChanged,
      required this.validator});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: keyBoardType ?? TextInputType.text,
      obscureText: obscureText ?? false,
      controller: controller,
      onChanged: onChanged,
      enabled: enabled ?? true,
      decoration: InputDecoration(
        fillColor: fillColor,
        filled: filled ?? false,
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        prefixIcon: prefixIcon,
        suffixIcon: suffixIconButton,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(color: defaultBoarderColor ?? Colors.grey),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(color: defaultBoarderColor ?? Colors.grey),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(color: focusedBoarderColor ?? Colors.red),
        ),
        labelText: labelText ?? '',
        labelStyle: labelStyle ?? TextStyle(color: Colors.grey, fontSize: 12),
      ),
      style: inputTextStyle ?? TextStyle(color: Colors.black, fontSize: 12),
      validator: (value) {
        if (value!.isEmpty) {
          return validator;
        } else {
          return null;
        }
      },
    );
  }
}
