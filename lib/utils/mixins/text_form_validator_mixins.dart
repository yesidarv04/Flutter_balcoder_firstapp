mixin TextFieldValidator {
  String? validateRequired(String? value) {
    if (value == null || value.isEmpty) {
      return 'Este campos es obligatorio';
    }
    return null;
  }
  String? validateNumber(String? value) {
    final numericRegex = RegExp(r'^-?[0-9]+$');
    if (value == null || value.isEmpty) {
      return 'Este campos es obligatorio';
    }
    if (!numericRegex.hasMatch(value)) {
      return 'Por favor introduce un número valido';
    }
    return null;
  }
  String? validateEmail(String? value) {
    final emailRegex = RegExp(r'^[^@]+@[^@]+\.[^@]+');
    if (value == null || value.isEmpty) {
      return 'Este campos es obligatorio';
    }
    if (!emailRegex.hasMatch(value)) {
      return 'Por favor introduce un correo electronico valido';
    }
    return null;
  }

  String? validatePassword(String? value) {
    final passwordRegex = RegExp(r'^[a-zA-Z0-9 ]+$');
    if (value == null || value.isEmpty) {
      return 'Este campos es obligatorio';
    }
    if (value.length < 6) {
      return 'Password must be at least 6 characters';
    }
    if (!passwordRegex.hasMatch(value)) {
      return 'Por favor introduce una contraseña valida, solo letras y números';
    }
    return null;
  }
}