import 'package:flutter/material.dart';

class BulidPhoneNumberWidget extends StatelessWidget {
  const BulidPhoneNumberWidget({
    super.key,
    required this.phoneNumberController,
  });

  final TextEditingController phoneNumberController;

  @override
  Widget build(BuildContext context) => TextFormField(
        autovalidateMode: AutovalidateMode.onUserInteraction,
        maxLength: 10,
        controller: phoneNumberController,
        keyboardType: TextInputType.number,
        decoration: const InputDecoration(
          hoverColor: Colors.orange,
          prefixIcon: Icon(
            Icons.phone,
          ),
          prefixIconColor: Colors.black,
          labelText: "Phone number",
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.black,
            ),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.red,
              width: 1.2,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.black,
              width: 1.2,
            ),
          ),
          errorBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.red,
              width: 1.2,
            ),
          ),
        ),
        validator: (value) {
          if (value == null || value.isEmpty) {
            return "Please enter your phone number";
          } else if (value.length != 10) {
            return "Please enter your valid phone number";
          }

          return null;
        },
      );
}