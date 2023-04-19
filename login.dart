import 'package:flutter/material.dart';

class MyForm extends StatefulWidget {
  const MyForm({Key? key}) : super(key: key);

  @override
  _MyFormState createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        // text field
        Form(
          child: TextFormField(),
        ),

        // submit button
        OutlinedButton(
          onPressed: () {},
          child: const Text('Submit'),
        ),
      ],
    );
  }}