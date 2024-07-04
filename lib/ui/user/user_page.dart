import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_balcoder_firstapp/ui/user/widgets/popup_widget.dart';
import 'package:flutter_balcoder_firstapp/utils/mixins/text_form_validator_mixins.dart';
import 'package:flutter_balcoder_firstapp/utils/widgets/main_scaffold.dart';

class UserPage extends StatefulWidget {
  const UserPage({super.key});

  @override
  State<UserPage> createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> with TextFieldValidator {
  final _formKey = GlobalKey<FormState>();
  late Size _size;

  //Controllers
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _ageController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  final List<String> _gender = ['Masculino', 'Femenino', 'Prefiero no decirlo'];
  String _selectedGender = 'Masculino';

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
                TextFormField(
                    controller: _nameController,
                    keyboardType: TextInputType.name,
                    decoration: const InputDecoration(
                      labelText: 'Name',
                      hintText: 'Insert name',
                    ),
                    validator: validateRequired),
                TextFormField(
                    controller: _ageController,
                    keyboardType: TextInputType.number,
                    inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                    decoration: const InputDecoration(
                      labelText: 'Age',
                      hintText: 'Insert age',
                    ),
                    validator: validateNumber),
                TextFormField(
                    controller: _emailController,
                    keyboardType: TextInputType.emailAddress,
                    decoration: const InputDecoration(
                      labelText: 'Email',
                      hintText: 'Insert Email',
                    ),
                    validator: validateEmail),
                TextFormField(
                    controller: _passwordController,
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: true,
                    decoration: const InputDecoration(
                      labelText: 'Password',
                      hintText: 'Insert Password',
                    ),
                    validator: validatePassword),
                DropdownButtonFormField<String>(
                  items: _gender.map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (newValue) {
                    setState(() {
                      _selectedGender = newValue!;
                    });
                  },
                  value: _selectedGender,
                  decoration: const InputDecoration(
                    labelText: 'Gender',
                    hintText: 'Insert Gender',
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      _showDialog();
                      // ScaffoldMessenger.of(context).showSnackBar(
                      //   const SnackBar(
                      //     content: Text('Processing Data'),
                      //     backgroundColor: Colors.green,
                      //   ),
                      // );
                    }
                  },
                  child: const Text('Submit'),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
