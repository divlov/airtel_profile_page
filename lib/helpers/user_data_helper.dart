class UserDataHelper {
  // Private constructor
  UserDataHelper._();

  // Singleton instance
  static final UserDataHelper _instance = UserDataHelper._();

  String _email='';

  factory UserDataHelper.getInstance() {
    return _instance;
  }

  String get email=>'$_email';

  set email(String email){
    _email=email;
  }

}
