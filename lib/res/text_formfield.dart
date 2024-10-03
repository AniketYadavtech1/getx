import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController? controller;
  final TextInputType keyboardType;
  final int? maxLength;
  final List<TextInputFormatter>? inputFormatters;
  final bool filled;
  final Color fillColor;
  final IconData? prefixIcon;
  final IconData? suffixIcon;
  final String? labelText;
  final String? hintText;
  final FocusNode? focusNode;
  final String? Function(String?)? validator;
  final void Function(String?)? onFieldSubmitted;
  final String? obscureText; // Make obscureText optional
  final String obscuringCharacter;
  final void Function()? onSuffixIconPressed; // Added onSuffixIconPressed
  final bool readOnly;
  final bool enabled;
  final void Function(String)? onChanged; // Added onChanged callback
  final String? initialValue;
  final String? value;
  final int? width;
  final int? hight;
  CustomTextField(
      {this.controller,
      this.keyboardType = TextInputType.text,
      this.maxLength,
      this.inputFormatters,
      this.filled = true,
      this.fillColor = Colors.white,
      this.prefixIcon,
      this.suffixIcon,
      this.labelText,
      this.hintText,
      this.focusNode,
      this.validator,
      this.onFieldSubmitted,
      this.obscureText,
      this.obscuringCharacter = '\u2022',
      this.onSuffixIconPressed,
      this.readOnly = false,
      this.enabled = true,
      this.value,
      this.hight,
      this.width,
      this.onChanged, // Include onChanged in the constructor
      this.initialValue});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      initialValue: initialValue,
      controller: controller,
      keyboardType: keyboardType,
      maxLength: maxLength,
      inputFormatters: inputFormatters,
      onChanged: onChanged, // Use the onChanged callback here
      decoration: InputDecoration(
        filled: filled,
        fillColor: fillColor,
        prefixIcon: prefixIcon != null ? Icon(prefixIcon) : null,
        suffixIcon: suffixIcon != null
            ? IconButton(
                icon: Icon(suffixIcon),
                onPressed: onSuffixIconPressed != null
                    ? () {
                        // Use the custom onPressed function, if provided
                        onSuffixIconPressed!();
                      }
                    : () {
                        // Default toggle functionality for obscuring text
                        if (obscureText != null) {
                          // obscureText!.value = !obscureText!.value;
                        }
                      },
              )
            : null,
        labelText: labelText,
        hintText: hintText,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
      ),
      focusNode: focusNode,
      validator: validator,
      onFieldSubmitted: onFieldSubmitted,

      obscuringCharacter: obscuringCharacter,
      readOnly: readOnly,
      enabled: enabled,
    );
  }
}
