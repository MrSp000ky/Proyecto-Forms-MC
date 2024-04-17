import 'package:flutter/material.dart';
import 'package:flutterforms/presentation/widgets/input/custom_text_form_field.dart';

class RegisterForm extends StatefulWidget {
  const RegisterForm({super.key});

  @override
  State<RegisterForm> createState() => _RegisterFormState();
}


class _RegisterFormState extends State<RegisterForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  String userName = '';
  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
      children: [
      CustomTextFormField(
        label:'Nombre de Usuario',
        onChanged: (value) => userName = value,
        validador: (value) {
          if (value ==null || value.trim().isEmpty) return 'Campo Requerido';

          return null;
            
        },
      ),
      const SizedBox(
        height: 20,
      ),
      CustomTextFormField(
        label:'Correo Electronico',
        onChanged: (value) => email = value,
        validador: (value) {
          if (value ==null || value.trim().isEmpty) return 'Campo Requerido';
          final emailRegExp = RegExp(
                r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$',
              );

          if (!emailRegExp.hasMatch(value)) return 'No tiene el formato Requerido';

          return null;
            
        },
      ),
      const SizedBox(
        height: 20,
      ),
       CustomTextFormField(
        label:'Contraseña',
        onChanged: (value) => password = value,
        validador: (value) {
          if (value ==null || value.trim().isEmpty) return 'Campo Requerido';
          return null; 
        },
        obscureTest: true,
       ),
      const SizedBox(
        height: 20,
      ),
      FilledButton.tonalIcon(
                onPressed:(){
                  final isValid = _formKey.currentState!.validate();
                  if (!isValid) return;
                    
                }, 
                icon: const Icon(Icons.save),
                label: const Text('Save Info')),

    ],));
  }
}