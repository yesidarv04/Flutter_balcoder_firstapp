import 'package:flutter/material.dart';
import 'package:flutter_balcoder_firstapp/ui/user/widgets/popup_widget.dart';
import 'package:flutter_balcoder_firstapp/utils/mixins/text_form_validator_mixins.dart';
import 'package:flutter_balcoder_firstapp/utils/theme/app_constants.dart';
import 'package:flutter_balcoder_firstapp/utils/widgets/custom_text_form_field.dart';
import 'package:flutter_balcoder_firstapp/utils/widgets/main_scaffold.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> with TextFieldValidator {
  final _formKey = GlobalKey<FormState>();
  late Size _size;

  //Controllers
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  void _showDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return PopupWidget(
          name: _nameController.text,
          email: _emailController.text,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    _size = MediaQuery.of(context).size;

    return MainScaffold(
      titlePage: 'userForm',
      child: Center(
        child: Container(
          padding: const EdgeInsets.all(12),
          width: _size.width * 0.5,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: Colors.black, width: 1),
              boxShadow: const [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 5,
                  offset: Offset(0, 5),
                )
              ]),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                const Text(
                  'Registrarme',
                  style: AppConstants.titleStyle,
                ),
                const Text(
                  'Explora temas de bienestar mental y resevar sesiones de forma segura',
                  style: AppConstants.subtitleStyle,
                ),
                CustomTextFormField(
                    fieldController: _nameController,
                    keyboardType: TextInputType.name,
                    labelText: 'Nombre',
                    hintText: 'Escribe tu nombre',
                    validator: validateRequired),
                CustomTextFormField(
                    fieldController: _emailController,
                    keyboardType: TextInputType.emailAddress,
                    labelText: 'Email',
                    hintText: 'Escribe tu email',
                    validator: validateEmail),
                TextFormField(
                    controller: _passwordController,
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: true,
                    decoration: const InputDecoration(
                      labelText: 'Contraseña',
                      hintText: 'Escribe tu contraseña',
                    ),
                    validator: validatePassword),
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      _showDialog();
                    }
                  },
                  style: AppConstants.styleButton,
                  child: const Text('Submit'),
                ),
                Center(
                  child: GestureDetector(
                    onTap: () {
                      //Poner ruta de nav
                    },
                    child: const Text(
                      '¿Ya te has inscrito? Inicia sesión',
                      style: TextStyle(
                        color: Colors.blue,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
