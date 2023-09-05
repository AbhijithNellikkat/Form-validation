import 'package:flutter/material.dart';

class BuildPasswordWidget extends StatelessWidget {
  const BuildPasswordWidget({
    super.key,
    required this.passwordController,
  });

  final TextEditingController passwordController;

  @override
  Widget build(BuildContext context) => TextFormField(
        autovalidateMode: AutovalidateMode.onUserInteraction,
        obscureText: true,
        controller: passwordController,
        decoration: const InputDecoration(
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
          labelText: 'Password',
          prefixIcon: Icon(
            Icons.fingerprint,
          ),
          prefixIconColor: Colors.black,
          suffixIcon: Icon(Icons.visibility_off),
        ),
        validator: (value) {
          final regExp = RegExp(
              r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');

          if (value == null || value.isEmpty) {
            return 'Please enter your password';
          } else if (!regExp.hasMatch(value)) {
            return "* should contain at least one upper case \n* should contain at least one lower case \n* should contain at least one digit \n* should contain at least one Special character \n* Must be at least 8 characters in length ";
          } else {
            return null;
          }
        },
      );
}