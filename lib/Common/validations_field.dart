String validateEmailField(String value) {
  String pattern =
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
  RegExp regex = new RegExp(pattern);
  if (value.isEmpty)
    return 'Email is Required.';
  else if (!regex.hasMatch(value)) return 'Invalid Email';else return '';
}

String validatePassword(String value) {
  // Pattern pattern = r'^(?=.*[0-9]+.*)(?=.*[a-zA-Z]+.*)[0-9a-zA-Z]{6,}$';
  // RegExp regex = new RegExp(pattern);

  if (value.isEmpty)
    return 'Password is Required.';
  else if (value.length < 6)
    return 'Password required at least 6 numbers';
  // else if (!regex.hasMatch(value))
  //   return 'Password must contain numbers, letter, and at least six characters';
  else
    return '';
}

String validateUsername(String value) {
  // Pattern pattern = r'^(?=.*[0-9]+.*)(?=.*[a-zA-Z]+.*)[0-9a-zA-Z]{6,}$';
  // RegExp regex = new RegExp(pattern);

  if (value.isEmpty)
    return 'Username is Required.';
  else if (value.length < 6)
    return 'Username required at least 6 numbers';
  // else if (!regex.hasMatch(value))
  //   return 'Password must contain numbers, letter, and at least six characters';
  else
    return '';
}

String validateName(String value) {
  if (value.isEmpty)
    return 'Name is Required.';
  else if (value.length < 3)
    return 'Name required at least 6 numbers';
  else
    return '';
}

String validateFirstName(String value) {
  if (value.isEmpty)
    return 'First Name is Required.';
  else if (value.length < 3)
    return 'First Name required at least 3 numbers';
  else
    return '';
}

String validateSecondName(String value) {
  if (value.isEmpty)
    return 'Second Name is Required.';
  else if (value.length < 3)
    return 'Second Name required at least 3 numbers';
  else
    return '';
}

String validateThirdName(String value) {
  if (value.isEmpty)
    return 'Third Name is Required.';
  else if (value.length < 3)
    return 'Third Name required at least 6 numbers';
  else
    return '';
}

String validateFourthName(String value) {
  if (value.isEmpty)
    return 'Fourth Name is Required.';
  else if (value.length < 3)
    return 'Fourth Name required at least 6 numbers';
  else
    return '';
}

String validateFifthName(String value) {
  if (value.isEmpty)
    return 'Fifth Name is Required.';
  else if (value.length < 3)
    return 'Fifth Name required at least 6 numbers';
  else
    return '';
}

String validateMobile(String value) {
  if (value.isEmpty)
    return 'Mobile Number is Required.';
  else if (value.length < 10)
    return 'Mobile Number required 10 numbers';
  else
    return '';
}
