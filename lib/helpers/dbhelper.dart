import 'package:sqflite/sqflite.dart';
import 'dart:async';
//mendukug pemrograman asinkron
import 'dart:io';
//bekerja pada file dan directory
import 'package:path_provider/path_provider.dart';
import 'package:peduli_diri/models/mUser.dart';
import 'package:shared_preferences/shared_preferences.dart';
//pubspec.yml


//kelass Dbhelper
class DbHelper {
  static DbHelper _dbHelper;
  static Database _database;  

  DbHelper._createObject();

  factory DbHelper() {
    _dbHelper ??= DbHelper._createObject();
    return _dbHelper;
  }

  Future<Database> initDb() async {
  
  //untuk menentukan nama database dan lokasi yg dibuat
    Directory directory = await getApplicationDocumentsDirectory();
    String path = '${directory.path}peduliDiri.db';
    
   //create, read databases
    var todoDatabase = openDatabase(path, version: 1, onCreate: _createDb);
    
    //mengembalikan nilai object sebagai hasil dari fungsinya
    return todoDatabase;
  }

    //buat tabel baru dengan nama contact
  void _createDb(Database db, int version) async {
    await db.execute('''
      CREATE TABLE users (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        username TEXT,
        nik TEXT,
        pass TEXT
      )
    ''');
  }

  Future<Database> get database async {
    _database ??= await initDb();
    return _database;
  }
//create databases
  Future<int> saveUser(User object) async {
    Database db = await this.database;
    int count = await db.insert('users', object.toMap());
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('Username', object.username);
    prefs.setBool('isLogin', true);
    return count;
  }
  Future<int> logIn(String user, String pass) async {
    Database db = await this.database;
    var res = await db.rawQuery("SELECT * FROM users WHERE username = '$user' and password = '$pass'");
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('Username', user);
    prefs.setBool('isLogin', true);
    return res.length;
  }

  Future<int> update(User object) async {
    Database db = await this.database;
    int count = await db.update('users', object.toMap(), 
                                where: 'id=?',
                                whereArgs: [object.id]);
    return count;
  }

//delete databases
  Future<int> delete(int id) async {
    Database db = await this.database;
    int count = await db.delete('users', 
                                where: 'id=?', 
                                whereArgs: [id]);
    return count;
  }
  
  // Future<List<User>> getUserList() async {
  //   // ignore: non_constant_identifier_names
  //   var UserMapList = await select();
  //   int count = UserMapList.length;
  //   // ignore: deprecated_member_use, non_constant_identifier_names
  //   List<User> UserList = <User>[];
  //   for (int i=0; i<count; i++) {
  //     UserList.add(User.fromMap(UserMapList[i]));
  //   }
  //   return UserList;
  // }

}
