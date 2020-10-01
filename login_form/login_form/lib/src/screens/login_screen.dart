import 'package:flutter/material.dart';
import '../mixins/validation_mixin.dart';

class LoginScreen extends StatefulWidget {
  createState() {
   return LoginScreenState();
  }
}

class LoginScreenState extends State<LoginScreen> with ValidationMixin {
  final formKey = GlobalKey<FormState>();

  String email = '';
  String password = '';

  Widget build(context) {
    return Container(
      margin: EdgeInsets.all(20.0),
      child: Form(
      key: formKey,
        child: Column(
          children: [
            emailField(),
            passwordField(),
            submitButton(),

          ],
        ),
      ),

    );
  }

 Widget emailField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        labelText: 'Email Address',
        hintText: 'this@example.com',
      ),

      validator: validateEmail,
      onSaved: (String value) {
        email = value;
      },
    );
 }

Widget passwordField() {
    return TextFormField(
      obscureText: true,
      decoration: InputDecoration(
        labelText: 'Enter Password',
        hintText: 'Password',
      ),

     validator:  validatePassword,
      onSaved: (String value) {
        password = value;
      },

    );
 }

Widget submitButton() {
    return RaisedButton(
      color: Colors.blueAccent,
      child: Text('Submit'),
      onPressed: () {
        if(formKey.currentState.validate()) {
         formKey.currentState.save();
         print('Time to post $email and $password to my API');
        }
      },
    );
 }
}