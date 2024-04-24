mixin Validadores{
  userNameValidator (value) {
          if (value ==null || value.trim().isEmpty) return 'Campo Requerido';

          return null;
            
        }


  emailValidator(value) {
          if (value ==null || value.trim().isEmpty) return 'Campo Requerido';
          final emailRegExp = RegExp(
                r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$',
              );

          if (!emailRegExp.hasMatch(value)) return 'No tiene el formato Requerido';

          return null;
            
        }

  passWordValidator(value) {
          if (value ==null || value.trim().isEmpty) return 'Campo Requerido';
          return null; 
        }
}