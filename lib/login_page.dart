import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding:  const EdgeInsets.all( 40.0),
        children: <Widget>[
          Image.asset("assets/your-logo-here.png", height: 300, width: 300,),
          LoginTextFormField(hint: "User", obscure: false),
          SizedBox(height: 20),
          LoginTextFormField(hint: "Pass", obscure: true),
          SizedBox(height: 50),
          RaisedButton(
            color: Color(0xFFF56849),
            onPressed: (){},
            child: Text("Login"),
          ),
        ],
      ),
    );
  }
}

class LoginTextFormField extends StatelessWidget {
  final String hint;
  final bool obscure;
  final TextEditingController textEditingController;
  LoginTextFormField({this.hint, this.obscure, this.textEditingController});
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscure,
      controller: textEditingController,
      decoration: new InputDecoration(
        hintText: hint,
      ),
    );
  }
}