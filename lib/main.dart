import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:splash_screen_view/SplashScreenView.dart';
import 'package:wedding_planner/authentication/screens/email_login_page.dart';
import 'package:wedding_planner/repository/utils/model_location.dart';
import 'package:wedding_planner/welcome_screens/user_selection_page.dart';

void main() {
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
          textTheme: GoogleFonts.tinosTextTheme(
            Theme.of(context).textTheme.copyWith(
                bodyText2: const TextStyle(
                    color: Colors.black, fontWeight: FontWeight.bold),
                bodyText1: const TextStyle(
                  color: Colors.black38,
                )),
          ),
        ),
        themeMode: ThemeMode.dark,
        home: const UserSelectionPage(),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SplashScreenView(
      navigateRoute: const EmailLoginPage(),
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
