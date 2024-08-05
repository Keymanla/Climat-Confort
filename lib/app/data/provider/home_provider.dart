import 'package:climat_confort/app/data/api/api_connect.dart';
import 'package:climat_confort/app/data/model/user.dart';
import 'package:climat_confort/app/utils/constants.dart';

class HomeProvider {
  HomeProvider();

  // Get request
  Future<User> getUser() async {
    return User.fromJson(
      (await ApiConnect.instance.get(EndPoints.user)).getBody(),
    );
  }
}
