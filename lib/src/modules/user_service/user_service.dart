part of backendless_sdk;

class BackendlessUserService {
  static const MethodChannel _channel = const MethodChannel(
      'backendless/user_service',
      StandardMethodCodec(BackendlessMessageCodec()));

  factory BackendlessUserService() => _instance;
  static final BackendlessUserService _instance =
      new BackendlessUserService._internal();
  BackendlessUserService._internal();

  Future<BackendlessUser?> getCurrentUser() =>
      _channel.invokeMethod("Backendless.UserService.getCurrentUser");

  Future<void> setCurrentUser(BackendlessUser currentUser,
      {bool stayLoggedIn = false}) async {
    if (stayLoggedIn) {
      if (currentUser.getProperty('objectId') == null ||
          await Backendless.userService.getUserToken() == null)
        throw Exception(
            'stayLoggedIn failed bacause objectId and userToken cannot be null');
    }

    return await _channel
        .invokeMethod("Backendless.UserService.setCurrentUser", {
      "currentUser": currentUser,
      "stayLoggedIn": stayLoggedIn,
    });
  }

  Future<List<UserProperty>> describeUserClass() async =>
      (await _channel.invokeMethod("Backendless.UserService.describeUserClass"))
          .cast<UserProperty>();

  Future<BackendlessUser?> findById(String id) => _channel.invokeMethod(
      "Backendless.UserService.findById", <String, dynamic>{"id": id});

  Future<List<BackendlessUser>?> findByRole(roleName,
          {bool? loadRoles, DataQueryBuilder? queryBuilder}) async =>
      (await _channel.invokeMethod("Backendless.UserService.findByRole", {
        "roleName": roleName,
        "loadRoles": loadRoles,
        "queryBuilder": queryBuilder,
      }))
          .cast<BackendlessUser?>();

  Future<List<String>?> getUserRoles() async =>
      (await _channel.invokeMethod("Backendless.UserService.getUserRoles"))
          .cast<String>();

  Future<bool?> isValidLogin() =>
      _channel.invokeMethod("Backendless.UserService.isValidLogin");

  Future<String?> loggedInUser() =>
      _channel.invokeMethod("Backendless.UserService.loggedInUser");

  Future<BackendlessUser?> login(String login, String password,
          [bool stayLoggedIn = false]) =>
      _channel.invokeMethod("Backendless.UserService.login", <String, dynamic>{
        "login": login,
        "password": password,
        "stayLoggedIn": stayLoggedIn
      });

  Future<void> logout() =>
      _channel.invokeMethod("Backendless.UserService.logout");

  Future<BackendlessUser?> register(BackendlessUser user) =>
      _channel.invokeMethod(
          "Backendless.UserService.register", <String, dynamic>{"user": user});

  Future<void> resendEmailConfirmation(String identity) =>
      _channel.invokeMethod("Backendless.UserService.resendEmailConfirmation",
          <String, dynamic>{"identity": identity});

  Future<String?> createEmailConfirmationURL(String identity) =>
      _channel.invokeMethod(
          "Backendless.UserService.createEmailConfirmationURL",
          {"identity": identity});

  Future<void> restorePassword(String identity) => _channel.invokeMethod(
      "Backendless.UserService.restorePassword",
      <String, dynamic>{"identity": identity});

  Future<BackendlessUser?> update(BackendlessUser user) =>
      _channel.invokeMethod(
          "Backendless.UserService.update", <String, dynamic>{"user": user});

  Future<String?> getUserToken() =>
      _channel.invokeMethod("Backendless.UserService.getUserToken");

  Future<void> setUserToken(String userToken) => _channel.invokeMethod(
      "Backendless.UserService.setUserToken",
      <String, dynamic>{"userToken": userToken});

  Future<BackendlessUser?> loginAsGuest([bool stayLoggedIn = false]) =>
      _channel.invokeMethod("Backendless.UserService.loginAsGuest",
          <String, dynamic>{"stayLoggedIn": stayLoggedIn});

  Future<BackendlessUser?> loginWithOauth1(
      String authProviderCode,
      String authToken,
      String authTokenSecret,
      Map<String, String> fieldsMappings,
      bool stayLoggedIn,
      [BackendlessUser? guestUser]) {
    if (authProviderCode != "twitter")
      throw ArgumentError(
          "OAuth authentication for provider $authProviderCode is not available");
    return _channel.invokeMethod("Backendless.UserService.loginWithOauth1", {
      "authProviderCode": authProviderCode,
      "authToken": authToken,
      "authTokenSecret": authTokenSecret,
      "fieldsMappings": fieldsMappings,
      "stayLoggedIn": stayLoggedIn,
      "guestUser": guestUser,
    });
  }

  Future<BackendlessUser?> loginWithOauth2(
          String authProviderCode,
          String accessToken,
          Map<String, String> fieldsMappings,
          bool stayLoggedIn,
          [BackendlessUser? guestUser]) =>
      _channel.invokeMethod("Backendless.UserService.loginWithOauth2", {
        "authProviderCode": authProviderCode,
        "accessToken": accessToken,
        "fieldsMappings": fieldsMappings,
        "stayLoggedIn": stayLoggedIn,
        "guestUser": guestUser,
      });

  Future<String?> getAuthorizationUrlLink(
    String authProviderCode, {
    Map<String, String>? fieldsMappings,
    List<String>? scope,
  }) =>
      _channel.invokeMethod("Backendless.UserService.getAuthorizationUrlLink", {
        "authProviderCode": authProviderCode,
        "fieldsMappings": fieldsMappings,
        "scope": scope,
      });
}
