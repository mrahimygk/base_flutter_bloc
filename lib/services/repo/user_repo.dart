
import 'package:himart_customer/models/user.dart';
import 'package:himart_customer/services/db/database_provider.dart';
import 'package:himart_customer/services/network/api/api_result.dart';

abstract class UserRepo {
  DatabaseProvider databaseProvider;

  Future insert(User data);

  Future update(User data);

  Future delete(User data);

  Future<User> getFromDb();

  /// login with email and pass
  /// returns user with avatar
  Future<ApiResult<User>> login(String email, String pass);

  /// sign up with email and pass
  /// returns user with random avatar
  Future<ApiResult<User>> register(String email, String pass);
}
