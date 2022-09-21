import 'package:flutter/material.dart';
import 'package:splash_screen_view/SplashScreenView.dart';
import 'package:wedding_planner/authentication/screens/sign_up_page.dart';
import 'package:wedding_planner/welcome_screens/user_selection_page.dart';

void main() {
  runApp(const MyApp());
  //hello//////////////////////
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SplashScreenView(
      navigateRoute: const UserSelectionPage(),
      backgroundColor: Colors.white,
      speed: 2,
      pageRouteTransition: PageRouteTransition.Normal,
      duration: 4000,
      imageSize: 300,
     // imageSrc: 'assets/images/splash_logo.png',
      text: 'Welcome',
      //colors: [Colors.green,Colors.pink,Colors.yellowAccent],
    );
  }
}

