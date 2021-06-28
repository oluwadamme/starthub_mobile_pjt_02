import 'package:starthub_mobile_pjt/models/base_model.dart';
import 'package:starthub_mobile_pjt/service/authentication.dart';
import 'package:starthub_mobile_pjt/service/navigation_service.dart';
import 'package:starthub_mobile_pjt/widget/route_name.dart';

class StartUpViewModel extends BaseModel {
  final AuthService _authService = AuthService();
  final NavigationService _navigationService = NavigationService();

  Future handleStartUpLogic() async {
    var userLoggedIn = await _authService.isUserLoggedIn();

    if (userLoggedIn) {
      _navigationService.navigateTo(HomeViewRoute);
    } else {
      _navigationService.navigateTo(LoginViewRoute);
    }
  }
}