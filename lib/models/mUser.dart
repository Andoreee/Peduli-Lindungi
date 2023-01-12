class User {
  int _id;
  String _username;
  String _nik;
  String _pass;

  // konstruktor versi 1
  User(this._username, this._nik, this._pass);

  // konstruktor versi 2: konversi dari Map ke User
  User.fromMap(Map<String, dynamic> map) {
    this._id = map['id'];
    this._username = map['username'];
    this._nik = map['nik'];
    this._pass = map['pass'];
  }
  //getter dan setter (mengambil dan mengisi data kedalam object)
  // getter
  int get id => _id;
  String get username => _username;
  String get nik => _nik;
  String get pass => _pass;

  // setter  
  set username(String value) {
    _username = value;
  }

  set nik(String value) {
    _nik = value;
  }
  
  set pass(String value) {
    _pass = value;
  }

  // konversi dari User ke Map
  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = Map<String, dynamic>();
    map['id'] = this._id;
    map['username'] = username;
    map['nik'] = nik;
    map['pass'] = pass;
    return map;
  }  

}
