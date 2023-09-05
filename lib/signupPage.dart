// ignore: file_names
import 'package:flutter/material.dart';
import 'package:form_app/welcomePage.dart';
import 'package:form_app/widgets/email_widget.dart';
import 'package:form_app/widgets/password_widget.dart';
import 'package:form_app/widgets/phoneNumber_widget.dart';
import 'package:form_app/widgets/username_widget.dart';

final formKey = GlobalKey<FormState>();

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneNumberController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/image2.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: SizedBox(
            width: 300,
            height: 400,
            child: Center(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Create Account",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontFamily: 'DancingScript',
                        fontWeight: FontWeight.w900,

                        // color: Colors.blue,
                      ),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    Form(
                      key: formKey,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 20,
                              right: 20,
                              top: 10,
                              bottom: 5,
                            ),
                            child: BuildUsernameWidget(
                                usernameController: usernameController),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 20,
                              right: 20,
                              top: 10,
                              bottom: 5,
                            ),
                            child: BuildEmailWidget(
                                emailController: emailController),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 20,
                              right: 20,
                              top: 10,
                              bottom: 5,
                            ),
                            child: BulidPhoneNumberWidget(
                                phoneNumberController: phoneNumberController),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 20,
                              right: 20,
                              top: 10,
                              bottom: 5,
                            ),
                            child: BuildPasswordWidget(
                                passwordController: passwordController),
                          ),
                          const SizedBox(
                            height: 19,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                TextButton(
                                  onPressed: () {
                                    // Navigator.push(
                                    //   context,
                                    //   MaterialPageRoute(
                                    //     builder: (context) => const HomePage(),
                                    //   ),
                                    // );
                                  },
                                  child: const Text(
                                    "Home Page",
                                    style: TextStyle(
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    validate(context);
                                  },
                                  child: Container(
                                    width: 56,
                                    height: 56,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.grey[800],
                                    ),
                                    child: const Icon(
                                      Icons.arrow_right_alt,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  void validate(BuildContext context) {
    FocusManager.instance.primaryFocus?.unfocus();
    final isValid = formKey.currentState!.validate();
    if (isValid) {
      formKey.currentState!.save();
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => WelcomePage(
            username: usernameController.text,
            email: emailController.text,
            phoneNumber: phoneNumberController.text,
            password: passwordController.text,
          ),
        ),
      );
    }
  }
}
