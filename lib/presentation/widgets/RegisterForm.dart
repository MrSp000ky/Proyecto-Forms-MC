import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutterforms/presentation/helper/validadores.dart';
import 'package:flutterforms/presentation/register/register_cubit.dart';
import 'package:flutterforms/presentation/widgets/input/custom_text_form_field.dart';

class RegisterForm extends StatefulWidget {
  const RegisterForm({super.key});

  @override
  State<RegisterForm> createState() => _RegisterFormState();
}


class _RegisterFormState extends State<RegisterForm> with Validadores {

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  
  String userName = '';
  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    final RegisterCubit registerCubit = context.watch<RegisterCubit>();
    return Form(
      key: _formKey,
      child: Column(
      children: [
      CustomTextFormField(
        label:'Nombre de Usuario',
        onChanged: (value) => userNameOnChange(value: value,registerCubit: registerCubit),
        validador: (value) => userNameValidator(value),
      ),
      const SizedBox(
        height: 20,
      ),
      CustomTextFormField(
        label:'Correo Electronico',
        onChanged: (value) => emailOnChange(value: value,registerCubit: registerCubit),
        validador: (value) => emailValidator(value),
      ),
      const SizedBox(
        height: 20,
      ),
       CustomTextFormField(
        label:'Contraseña',
        onChanged: (value) => passswordOnChange(value: value,registerCubit: registerCubit),
        validador: (value) => passWordValidator(value),
        obscureTest: true,
       ),
      const SizedBox(
        height: 20,
      ),
      FilledButton.tonalIcon(
                onPressed:(){
                  final isValid = _formKey.currentState!.validate();
                  if (!isValid) {
                    registerCubit.onSubmit();
                  }
                    
                }, 
                icon: const Icon(Icons.save),
                label: const Text('Save Info')),

    ],));
  }


  userNameOnChange({String value = "", required RegisterCubit registerCubit}) {
          registerCubit.userNameChanged(value);
          _formKey.currentState?.validate();
        }

  emailOnChange({String value = "", required RegisterCubit registerCubit}) {
          registerCubit.emailChanged(value);
          _formKey.currentState?.validate();
        }

  passswordOnChange({String value = "", required RegisterCubit registerCubit}) {
          registerCubit.passwordChanged(value);
          _formKey.currentState?.validate();
        }


}