import 'package:flutter/material.dart';
import 'package:flutterassignment/ui/themes/colors.dart';

class CTextFormField extends StatelessWidget {
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final String? hintText;
  final Function()? onTap;
  final bool readOnly;

  const CTextFormField({
    super.key,
    this.controller,
    this.validator,
    this.onTap,
    this.hintText,
    this.readOnly = false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: TextFormField(
        controller: controller,
        validator: validator ??
            (v) => (v?.isEmpty ?? true) ? 'Field is required' : null,
        onTap: onTap,
        readOnly: readOnly,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(
            fontWeight: FontWeight.w600,
            color: grey.withOpacity(.9),
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: grey.withOpacity(.6), width: 1.8),
          ),
        ),
      ),
    );
  }
}
