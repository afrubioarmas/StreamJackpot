import 'package:StreamJackpot/misc/service_locator.dart';
import 'package:StreamJackpot/model/user.dart';

class LoggedUserHelper {
  static void setLoggedUser(User userToSet) {
    locator<User>().clone(userToSet);
  }

  static User getLoggedUser() {
    return locator<User>();
  }

  static bool isUserLogged() {
    return locator<User>().id != "";
  }
}
