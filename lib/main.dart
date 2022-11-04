import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:splash_screen_view/SplashScreenView.dart';
import 'package:wedding_planner/repository/utils/data_constants.dart';
import 'package:wedding_planner/repository/utils/model_location.dart';
import 'package:wedding_planner/welcome_screens/user_selection_page.dart';

import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<LocationPicker>(
      create: (context) => LocationPicker(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          iconTheme: const IconThemeData(
            color: Colors.black38,
          ),
          textTheme: (Theme.of(context).textTheme.copyWith(
              bodyText2: TextStyle(
                  color: CustomColors.backGroundColor,
                  fontWeight: FontWeight.bold),
              bodyText1: const TextStyle(
                color: Colors.black38,
              ))),
        ),
        themeMode: ThemeMode.dark,
        home: const HomePage(),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SplashScreenView(
      navigateRoute: const UserSelectionPage(),
      backgroundColor: CustomColors.greenish,
      speed: 2,
      pageRouteTransition: PageRouteTransition.Normal,
      duration: 4000,
      imageSize: 300,
      imageSrc: 'assets/images/Mayaring_splash.png',
    );
  }
}
