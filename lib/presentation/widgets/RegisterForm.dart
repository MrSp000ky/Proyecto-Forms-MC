import 'package:flutter/material.dart';

class RegisterForm extends StatelessWidget {
  const RegisterForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(child: Column(
      children: [
      TextFormField(),
      FilledButton.tonalIcon(
                onPressed:(){}, 
                icon: const Icon(Icons.save),
                label: const Text('Save Info')),

    ],));
  }
}