class RouteName {
  static final String rootLayout = "/";
  static final String search = "search";
  static final String news = "news";
  static final String events = "events";
  static final String onboard = "/onboard";
  static final String login = "/auth/login";
  static final String verification = "verification";
  static final String updateProfile = "updateProfile";
  static final String regoster = "/auth/regoster";
  static final String resetPassword = "/auth/resetPassword";
  static final String product = "products";
}

class NavigateTo {
  static final String rootLayout = "/";
  static final String search = "/${RouteName.search}";
  static final String onboard = "/onboard";
  static final String login = "/auth/login";
  static final String updateProfile =
      "/auth/login/${RouteName.verification}/${RouteName.updateProfile}";
  static final String verification = "/auth/login/${RouteName.verification}";
  static final String register = "/auth/regoster";
  static final String news = "/${RouteName.news}";
  static final String newsToEvents = "/${RouteName.news}/${RouteName.events}";
  static final String events = "/${RouteName.events}";
  static final String products = "/${RouteName.product}";
}
