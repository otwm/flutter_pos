extension FormCheck on String {
  bool get isValidEmail {
    final emailRegExp = RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
    return emailRegExp.hasMatch(this);
  }

  bool get isValidId {
    final nameRegExp = RegExp(r"^[A-Za-z].*[0-9]?$");
    return nameRegExp.hasMatch(this);
  }

  bool get isValidPassword {
    final passwordRegExp = RegExp(r'^(?=.*\d)(?=.*[a-z]).{8,}$');
    return passwordRegExp.hasMatch(this);
  }

  bool get isValidPhone {
    final phoneRegExp = RegExp(r"^[0-9]{3}(-)?[0-9]{3,4}(-)?[0-9]{4}$");
    return phoneRegExp.hasMatch(this);
  }
}
