mixin TextFieldValidator {
  String? validateRequired(String? value) {
    if (value == null || value.isEmpty) {
      return 'This field is required';
    }
    return null;
  }
  String? validateNumber(String? value) {
    final numericRegex = RegExp(r'^-?[0-9]+$');
    if (value == null || value.isEmpty) {
      return 'This field is required';
    }
    if (!numericRegex.hasMatch(value)) {
      return 'Please enter a valid number';
    }
    return null;
  }
  String? validateEmail(String? value) {
    final emailRegex = RegExp(r'^[^@]+@[^@]+\.[^@]+');
    if (value == null || value.isEmpty) {
      return 'This field is required';
    }
    if (!emailRegex.hasMatch(value)) {
      return 'Please enter a valid email address';
    }
    return null;
  }

  String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'This field is required';
    }
    if (value.length < 6) {
      return 'Password must be at least 6 characters';
    }
    return null;
  }
}