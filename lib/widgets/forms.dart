// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class FormsWidget extends StatefulWidget {
  const FormsWidget({super.key});

  @override
  State<FormsWidget> createState() => _FormsWidgetState();
}

class _FormsWidgetState extends State<FormsWidget> {
  String firstName = '';
  String secondName = '';
  String email = '';
  String password = '';

  //-------on save function ------///
  onsubmit() {
    final isValid = _formsKey.currentState!.validate();
    if (isValid) {
      _formsKey.currentState!.save();
      print(firstName);
      print(secondName);
      print(email);
      print(password);
      _formsKey.currentState!.reset();
    } else {
      final snackBar = SnackBar(content: Text('Validation Error Occured'));
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }
  }

  final _formsKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Register')),
        backgroundColor: Theme.of(context).colorScheme.secondary,
      ),
      //   drawer: DrawerWidget(),
      body: Container(
        margin: EdgeInsets.all(15),
        child: Form(
          key: _formsKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Enter First name',
                ),
                key: ValueKey('firstName'),
                validator: (value) {
                  if (value.toString().isEmpty) {
                    return 'First Name field is Empty';
                  } else {
                    return null;
                  }
                },
                onSaved: (value) {
                  firstName = value.toString();
                },
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Enter Last name',
                ),
                key: ValueKey('secondName'),
                validator: (value) {
                  if (value.toString().isEmpty) {
                    return 'Last Name field is Empty';
                  } else {
                    return null;
                  }
                },
                onSaved: (value) {
                  secondName = value.toString();
                },
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Enter Email',
                ),
                key: ValueKey('email'),
                validator: (value) {
                  if (value.toString().isEmpty) {
                    return 'Email field is Empty';
                  } else {
                    return null;
                  }
                },
                onSaved: (value) {
                  email = value.toString();
                },
              ),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Enter Password',
                ),
                key: ValueKey('password'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Password field is Empty';
                  } else if (value.length < 8) {
                    return 'Password must be at least 8 characters';
                  } else {
                    return null;
                  }
                },
                onSaved: (value) {
                  password = value.toString();
                },
              ),
              TextButton(
                style: ButtonStyle(elevation: MaterialStateProperty.all(20)),
                onPressed: onsubmit,
                child: Text('Submit'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
