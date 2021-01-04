import 'package:StreamJackpot/navigators/app_navigator/app_navigator.dart';
import 'package:get_it/get_it.dart';

final ServiceLocator locator = ServiceLocator._();

/// Convenience wrapper around GetIt.
class ServiceLocator<T> {
  ServiceLocator._();

  final GetIt _getIt = GetIt.instance;

  T call<T>() => _getIt<T>();

  Future<void> registerDependencies() async {
    //Navigators Start
    _getIt.registerSingleton(AppNavigator());
    //Navigators End

    //Repositories Begin

    //Repositories End

    //Auth Begin

    //Auth End

    //StorageRepositories Begin

    //StorageRepositories End

    //Services Begin

    //Services End

    //Other Begin
    //Other End
  }
}
