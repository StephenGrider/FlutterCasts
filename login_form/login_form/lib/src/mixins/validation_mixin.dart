class  ValidationMixin {
  String validateEmail(String value) {
    if (!value.contains('@')) {
      return 'Please enter the valid email';
    }
    return null;
  }

  String validatePassword(String value) {
    if (value.length < 8) {
      return 'Password must be at least 8 characters';
    }
    return null;
  }
}