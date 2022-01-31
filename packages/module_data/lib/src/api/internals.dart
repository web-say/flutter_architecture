import 'package:injectable/injectable.dart';
import 'package:module_model/module_model.dart';

import 'services.dart';

@LazySingleton(as: UserService)
class DummyUserService implements UserService {
  @override
  Future<UserData> getDefaultUser() async {
    await Future.delayed(
      Duration(
        seconds: 1,
      ),
    );

    return UserData(id: 1, name: 'Default');
  }

  @override
  Future<UserData> getUserById(int id) async {
    await Future.delayed(
      Duration(
        seconds: 1,
      ),
    );

    return UserData(id: id, name: 'User id #$id');
  }
}
