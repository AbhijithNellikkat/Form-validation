import 'package:flutter/material.dart';
import 'package:form_app/signupPage.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/image1.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const SignupPage(),
                ),
              );
            },
            child: const Text(
              'Sign Up',
              style: TextStyle(
                  fontSize: 33,
                  color: Colors.black,
                  fontFamily: 'DancingScript',
                  fontWeight: FontWeight.w900),
            ),
          ),
        ),
      ),
    );
  }
}
