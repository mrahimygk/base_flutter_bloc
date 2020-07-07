import 'dart:async';

import 'package:himart_customer/models/user.dart';
import 'package:himart_customer/services/db/database_provider.dart';
import 'package:himart_customer/services/repo/user_repoImpl.dart';

class UserBloc {
  final userRepo = UserRepoImpl(DatabaseProvider.get);
  final userController = StreamController<User>.broadcast();

  get user => userController.stream;

  UserBloc() {
    getUser();
  }

  getUser() async {
    userController.add(await userRepo.getFromDb());
  }

  insertUser(User user) async {
    await userRepo.insert(user);
    getUser();
  }

  updateUser(User user) async {
    await userRepo.update(user);
    getUser();
  }

  deleteUser(User user) async {
    await userRepo.delete(user);
    getUser();
  }

  dispose() {
    userController.close();
  }
}
