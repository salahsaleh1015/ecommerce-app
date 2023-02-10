import 'package:flutter/material.dart';

import '../../constance.dart';

class CustomFormField extends StatelessWidget {

  final String title;
  final ValueChanged onSaved;
  final FormFieldValidator<String> validator;

  const CustomFormField({ required this.title, required this.onSaved, required this.validator});

  @override
  Widget build(BuildContext context) {
    return  TextFormField(
      validator: validator,
      onSaved: onSaved,
      decoration:  InputDecoration(
          focusedBorder: const OutlineInputBorder(

              borderSide: BorderSide(

                  color: AppConstance.kPrimaryColor
              )
          ),
          hintText: title),
    );
  }
}
