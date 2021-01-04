class RegexValidator {
  static bool isEmail(String toValidate) {
    return RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(toValidate);
  }

  static bool isPhoneNumber(String toValidate) {
    return RegExp(r"^[+]*[(]{0,1}[0-9]{1,4}[)]{0,1}[-\s\./0-9]*$").hasMatch(toValidate);
  }
}
