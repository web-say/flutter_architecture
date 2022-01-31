import 'package:get_it/get_it.dart';
import 'package:module_data/module_data.dart';
import 'main_bloc.dart';

class BlocFactory {
  static final _getIt = GetIt.I;

  T get<T extends Object>() => _getIt.get<T>();

  static final instance = BlocFactory();

  void initialize() {
    ServiceProvider.instance.initialize();
    _getIt.registerFactory<MainBloc>(
      () => MainBloc(
        userService: ServiceProvider.instance.get<UserService>(),
      ),
    );
  }
}
