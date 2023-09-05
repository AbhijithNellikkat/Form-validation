import 'package:flutter/material.dart';

class WelcomePage extends StatefulWidget {
  final String username;
  final String email;
  final String phoneNumber;
  final String password;

  WelcomePage({
    required this.username,
    required this.email,
    required this.phoneNumber,
    required this.password,
    super.key,
  });

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(),
          body: Center(
            child: Container(
              margin: const EdgeInsets.only(
                top: 120,
              ),
              child: Column(
                children: [
                  Text(
                    "Username : ${widget.username}",
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Email  : ${widget.email}",
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Phone Number : ${widget.phoneNumber}",
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Password : ${widget.password}",
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
