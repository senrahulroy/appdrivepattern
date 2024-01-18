
/* -- App Image Strings -- */

/// This class contains all the App Images in String formats.
class RImages {
  RImages._();

  // -- App Logos
  static String _logosPathPng(String filePng) => "assets/png/$filePng.png";

  // -- Social Logos
  static String logo = _logosPathPng('logo');
  static String google = _logosPathPng('google');
  static String chatGptRobot = _logosPathPng('chatgpt robot');

}

