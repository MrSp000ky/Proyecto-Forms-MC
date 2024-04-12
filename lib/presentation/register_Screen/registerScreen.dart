import 'package:flutter/material.dart';
import 'package:flutterforms/presentation/widgets/RegisterForm.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Nuevo usuario'),
      ),
      body: const _RegisterView(),
    );
  }
}

class _RegisterView extends StatelessWidget {
  const _RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Padding(
        padding: EdgeInsets.all(8.0),
        
        child: SingleChildScrollView(
          child: Column(
            
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              FlutterLogo(size:500),//AQUI PONDRIAMOS EL QUERY DEL CONTEXT PARA EL TAMAÑO
              RegisterForm(),
              SizedBox(
                height: 20,
              ),

              
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}