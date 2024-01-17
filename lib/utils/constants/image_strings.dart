
/* -- App Image Strings -- */

/// This class contains all the App Images in String formats.
class RImages {
  RImages._();

  // -- App Logos
  static String _logosPathPng(String filePng) => "assets/logos/$filePng.png";

  static String darkAppLogo =  _logosPathPng('t-store-splash-logo-black');// "assets/logos/t-store-splash-logo-black.png";
  static String lightAppLogo =  _logosPathPng('t-store-splash-logo-white');//"assets/logos/t-store-splash-logo-white.png";

  // -- Social Logos
  static  String google = _logosPathPng('google-icon');//"assets/logos/google-icon.png";
  static  String facebook = _logosPathPng('facebook-icon');//"assets/logos/facebook-icon.png";

}

