import 'package:flutter/material.dart';

class BuildUsernameWidget extends StatelessWidget {
  const BuildUsernameWidget({
    super.key,
    required this.usernameController,
  });

  final TextEditingController usernameController;

  @override
  Widget build(BuildContext context) => TextFormField(
        autovalidateMode: AutovalidateMode.onUserInteraction,
        controller: usernameController,
        decoration: const InputDecoration(
          labelText: 'Username',
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
            Icons.account_circle,
          ),
          prefixIconColor: Colors.black,
        ),
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Please enter your username';
          } else if (value.length < 4) {
            return 'Too short username. choose a username \nwith 4 or more characters';
          } else {
            return null;
          }
        },
        // maxLength: 20,
      );
}