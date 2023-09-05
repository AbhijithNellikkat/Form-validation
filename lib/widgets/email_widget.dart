import 'package:flutter/material.dart';

class BuildEmailWidget extends StatelessWidget {
  const BuildEmailWidget({
    super.key,
    required this.emailController,
  });

  final TextEditingController emailController;

  @override
  Widget build(BuildContext context) => TextFormField(
        autovalidateMode: AutovalidateMode.onUserInteraction,
        controller: emailController,
        decoration: const InputDecoration(
          labelText: 'Email',
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
          prefixIcon: Icon(
            Icons.email,
          ),
          prefixIconColor: Colors.black,
        ),
        validator: (value) {
          final regExp = RegExp(
              r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
          if (value == null || value.isEmpty) {
            return 'Please enter your email address';
          } else if (!regExp.hasMatch(value)) {
            return "Please enter your valid email address";
          } else {
            return null;
          }
        },
      );
}