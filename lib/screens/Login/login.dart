import 'package:airtel_profile_page_flutter/helpers/user_data_helper.dart';
import 'package:airtel_profile_page_flutter/screens/Profile/profile.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  LoginPageState createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  final emailRegex = RegExp(
    r'^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$',
  );

  // final passwordRegex2 = RegExp(
  //   r'^(?=.*[a-z])(?=.*[A-Z])(?=.*[@!$<>])(?=.*\d)(?!.*(\d)\1)(?!.*([A-Za-z])\2).{8,18}$',
  // );

  /* check in a string that characters should be between 8 to 18 for characters,
  should accept at least 1 small, 1 capital, should accept at least 1 from these
  special characters @!$<> and also do not accept any other special character other
  than the ones mentioned and should accept at least 1 digit but not accept two or
  more adjacent digits and any two adjacent characters should not be same
   */
  final passwordRegex = RegExp(
    r'^(?=.*[a-z])(?=.*[A-Z])(?=.*[@!$<>])(?=.*\d)(?!.*(\d)\1)(?!.*(.)\2)(?!.*[^@!$<>A-Za-z\d]).{8,18}$',
  caseSensitive: false);

  String emailError = '';
  String passwordError = '';
  bool isValid = false;
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Page'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextFormField(
                  controller: emailController,
                  decoration: const InputDecoration(labelText: 'Email'),
                  validator: (value) {
                    if (!emailRegex.hasMatch(value!)) {
                      return 'Invalid email';
                    }
                    return null;
                  }),
              TextFormField(
                  controller: passwordController,
                  decoration: const InputDecoration(labelText: 'Password'),
                  obscureText: true,
                  validator: (value) {
                    if (!passwordRegex.hasMatch(value!)) {
                      return 'Invalid password';
                    }
                    return null;
                  }),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    UserDataHelper.getInstance().email=emailController.text;
                    Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (_) =>  const ProfilePage()));
                  }
                },
                child: const Text('Submit'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
