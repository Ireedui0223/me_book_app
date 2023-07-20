import 'package:flutter/material.dart';
import 'package:me_book/core/color.dart';
import 'package:me_book/elements/appbar.dart';
import 'package:me_book/elements/button.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  LoginPageState createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return const LoginScreenContent();
  }
}

class LoginScreenContent extends StatelessWidget {
  const LoginScreenContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          appBar(leading: btnAction(icon: Icons.arrow_back, onPressed: () {})),
      body: LoginInterface(),
    );
  }
}

class LoginInterface extends StatelessWidget {
  LoginInterface({super.key});

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 24, right: 24),
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Sign up",
              style: TextStyle(
                fontSize: 24,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 20),
              child: TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Invalid input";
                  }
                },
                decoration: InputDecoration(
                  label: const Text("Email"),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(width: 1, color: Colors.grey),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                        const BorderSide(width: 1.1, color: Colors.grey),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderSide: const BorderSide(width: 1, color: Colors.red),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderSide: const BorderSide(width: 1, color: Colors.red),
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 20),
              child: TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Invalid input";
                  }
                },
                decoration: InputDecoration(
                  isDense: true,
                  label: const Text("password"),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(width: 1, color: Colors.grey),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                        const BorderSide(width: 1.1, color: Colors.grey),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderSide: const BorderSide(width: 1, color: Colors.red),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderSide: const BorderSide(width: 1, color: Colors.red),
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  ScaffoldMessenger.of(context)
                      .showSnackBar(const SnackBar(content: Text("loading")));
                }
              },
              style: ElevatedButton.styleFrom(
                  minimumSize: const Size.fromHeight(40),
                  backgroundColor: AppColors.primary),
              child: const Text("Submit"),
            ),
          ],
        ),
      ),
    );
    // return Container(
    //   padding: const EdgeInsets.only(
    //     left: 24.0,
    //     right: 24.0,
    //   ),
    //   child: Center(
    //     child: Form(
    //       key: _formKey,
    //       child: const Column(
    //         children: [
    //           Text(
    //             "login",
    //             style: TextStyle(
    //                 fontWeight: FontWeight.w600, fontSize: 24, height: 32),
    //           ),
    //           TextField(
    //             decoration: InputDecoration(
    //               border: OutlineInputBorder(),
    //               labelText: "Email",
    //               hintText: "Email",
    //             ),
    //           )
    //         ],
    //       ),
    //     ),
    //   ),
    // );
  }
}
