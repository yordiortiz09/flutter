import 'package:flutter/material.dart';

class CustomInput extends StatelessWidget {
  final String? hintText;
  final String? labelText;
  final IconData? icon;
  final TextInputType? keyboardType;
  final bool? obscureText;
  final String formProperty;
  final Map<String, String> formValues;

  const CustomInput({
    super.key,
    this.hintText,
    this.labelText,
    this.icon,
    this.keyboardType,
    this.obscureText,
    required this.formProperty,
    required this.formValues,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: keyboardType,
      obscureText: obscureText ?? false,
      autofocus: true,
      onChanged: (value) => formValues[formProperty] = value,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Este campo es obligatorio';
        }
        if (value.length < 3) {
          return 'Debe tener al menos 3 caracteres';
        }
        if (value.length > 10) {
          return 'Debe tener menos de 10 caracteres';
        }

        return null;
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
      textCapitalization: TextCapitalization.words,
      decoration: InputDecoration(
        border: const OutlineInputBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                topRight: Radius.circular(20))),
        icon: icon == null ? null : Icon(icon),
        focusedBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20), topRight: Radius.circular(20)),
            borderSide: BorderSide(color: Colors.blue, width: 2.0)),
        hintText: hintText,
        labelText: labelText,
      ),
    );
  }
}
