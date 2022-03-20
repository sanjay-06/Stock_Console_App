import 'package:flutter/material.dart';
import 'package:stockconsole/screens/home/home.dart';
import 'package:stockconsole/screens/login.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final _formKey = GlobalKey<FormState>();

  final firstNameEditingController = TextEditingController();
  final lastNameEditingController = TextEditingController();
  final emailEditingController = TextEditingController();
  final passwordEditingController = TextEditingController();
  final confirmPasswordEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final firstNameField = TextFormField(
      autofocus: false,
      controller: firstNameEditingController,
      keyboardType: TextInputType.name,
      onSaved: (value) {
        firstNameEditingController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: const InputDecoration(
          prefixIcon: Icon(Icons.account_circle),
          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: 'First Name',
          border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)))),
    );

    final lastNameField = TextFormField(
      autofocus: false,
      controller: lastNameEditingController,
      keyboardType: TextInputType.name,
      onSaved: (value) {
        lastNameEditingController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: const InputDecoration(
          prefixIcon: Icon(Icons.account_circle),
          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: 'Last Name',
          border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)))),
    );

    final passwordField = TextFormField(
      autofocus: false,
      obscureText: true,
      controller: passwordEditingController,
      onSaved: (value) {
        passwordEditingController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: const InputDecoration(
          prefixIcon: Icon(Icons.vpn_key),
          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: 'Password',
          border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)))),
    );

    final confirmPasswordField = TextFormField(
      autofocus: false,
      obscureText: true,
      controller: confirmPasswordEditingController,
      onSaved: (value) {
        confirmPasswordEditingController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: const InputDecoration(
          prefixIcon: Icon(Icons.vpn_key),
          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: 'Confirm Password',
          border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)))),
    );

    final emailField = TextFormField(
      autofocus: false,
      controller: emailEditingController,
      keyboardType: TextInputType.emailAddress,
      onSaved: (value) {
        emailEditingController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: const InputDecoration(
          prefixIcon: Icon(Icons.mail),
          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: 'Email',
          border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)))),
    );

    final signupButton = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(30),
      color: Colors.redAccent,
      child: MaterialButton(
        padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
        minWidth: MediaQuery.of(context).size.width,
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => const Home()));
        },
        child: const Text(
          "Sign up",
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 15, color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
    );

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.red),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
            child: Container(
          color: Colors.white,
          child: Padding(
              padding: const EdgeInsets.all(36),
              child: Form(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    key: _formKey,
                    children: <Widget>[
                      SizedBox(
                        height: 200,
                        child:
                            Image.asset("images/logo.jpg", fit: BoxFit.contain),
                      ),
                      const SizedBox(height: 35),
                      firstNameField,
                      const SizedBox(height: 35),
                      lastNameField,
                      const SizedBox(height: 35),
                      emailField,
                      const SizedBox(height: 35),
                      passwordField,
                      const SizedBox(height: 35),
                      confirmPasswordField,
                      const SizedBox(height: 35),
                      signupButton,
                      const SizedBox(height: 35),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          const Text("Already have an account?"),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const Login()));
                            },
                            child: const Text(
                              " Sign In",
                              style: TextStyle(
                                  color: Colors.redAccent,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 15),
                            ),
                          )
                        ],
                      )
                    ]),
              )),
        )),
      ),
    );
  }
}
