import 'package:flutter/material.dart';

class CustomColors {
  static const Color textFontColor = Colors.black54;
  static const Color headingTextFontColor = Colors.white;
  static const Color signupOptionColors = Colors.red;

  static const Color buttonTextFontColor = Colors.white;
  static const Color greenish = Color(0xFF48B7B1);
  static const Color buttonBackgroundColor = Color(0xFFFFC000);

  static Color backGroundColor = Colors.white;

  static const Color yellowIconsColor = Color(0xFFFFC000);

  static const Color appBarColor = Colors.transparent;
  static const Color blackText = Colors.black;
  static const Color outLineBorderColor2 = Colors.black;
  // static const Color clipperColor = Color(0xFFFD00D4);
  //static const Color frameColor = Colors.black12;
  //static const Color personIconColor = Colors.black26;

////////////////////////////////////////////////////////////////

}

class DataList {
  static final List<String> listImages = [
    'assets/images/signup1.jpg',
    'assets/images/signup3.jpg',
    'assets/images/signup4.jpg',
    'assets/images/signup2.jpg',
  ];
}
//////////////////////////////////////////////////////

class ButtonsStyle {
  static TextStyle buttonTextStyle(
    BuildContext context,
  ) {
    return const TextStyle(
        fontSize: 20,
        color: CustomColors.buttonTextFontColor,
        fontWeight: FontWeight.bold);
  }
}

class Categories {
  static var categoryList = [
    'Wedding venues',
    'Bridal salons',
    'Groom salons',
    ' Groom wears',
    'Groom shoes',
    'Bridal wears',
    'Bridal shoes',
    'Wedding planners',
    'Video and photographers',
    'Music',
    'Huts ',
    'lights',
    'chairs',
    'tables',
    'Dancing',
    'Ashtaka and Jayamangala gatha',
    'Florists',
    'Flower bouquets',
    'Gifts',
    'Cake makers',
    'Wedding cake',
    'Wedding cards',
    'Transport',
    'Car renting',
    'Jewelleries',
    'Hotel/Honeymoon packages'
        'Poruwa and other decorations',
  ];
}

class Strings {
  static const String serviceProvider = 'ServiceProvider';

  static const String serviceUser = 'ServiceUser';
  static const String employee = 'Employee';
  static const String UIDPref = 'UID';
  static const String EIDPref = 'EID';
  static const String servicePref = 'service';
  static const String providerPackages = 'ProviderPackages';
  static const String generalPackageCollection = 'generalPackageCollection';
  static const String blogPost = 'BlogPost';
  static const String editMode = 'EditMode';
  static const String normalMode = 'normalMode';
  static const String loginWithEmail = 'emailLogin';
  static const String loginWithNumber = 'numberLogin';


  ///  for chats.........................................
  static const String chats = 'chats';
  static const String messages = 'Messages';
  static const String imageSource = 'imageSource';
  static const String msgSource = 'msgSource';
  static const String personalChat = 'personalChat';
  static const String online = 'true';
  static const String offline = 'false';
  static const String userPersonalTasks = 'userPersonalTasks';
}

class ScreenPading {
  static const double topPading = 32;
  static const double leftPading = 16;
  static const double rightPading = 16;
  static const double bottomPading = 16;
}
