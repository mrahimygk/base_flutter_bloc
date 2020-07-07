import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

import 'dao/user_dao.dart';

class DatabaseProvider {
  static final _instance = DatabaseProvider._internal();
  static DatabaseProvider get = _instance;
  bool isInit = false;
  Database _db;

  DatabaseProvider._internal();

  Future<Database> db() async {
    if (!isInit) await _init();
    return _db;
  }

  Future _init() async {
    var dbPath = await getDatabasesPath();
    String path = join(dbPath, 'himart.db');

    _db = await openDatabase(path, version: 1,
        onCreate: (Database db, int version) async {
      await db.execute(UserDao().createTableQuery);
    });
  }
}
