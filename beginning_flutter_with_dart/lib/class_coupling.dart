class CheckHttps{
  String urlCheck;
  CheckHttps(this.urlCheck);
  bool checkingURL(String urlCheck) {
    if (this.urlCheck.contains('https')){
      return true;

    }
    else return false;

  }
}

String myConnection(String dbName, String hostname, String username, [String? optionalPassword]){
  if (optionalPassword == null){
    return "${dbName}, ${hostname}, $username"; 
  }
  else return "${dbName}, ${hostname}, ${username}, $optionalPassword";
}