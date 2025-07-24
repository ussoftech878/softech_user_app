import 'package:easy_splash_screen/easy_splash_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:softech_user_app/viewmodels/auth_viewmodel.dart';

import '../utils/custom_colors.dart';
import '../utils/images.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  /* // It is assumed that all messages contain a data field with the key 'type'
  Future<void> setupInteractedMessage() async {
    // Get any messages which caused the application to open from
    // a terminated state.
    RemoteMessage? initialMessage =
    await FirebaseMessaging.instance.getInitialMessage();

    // If the message also contains a data property with a "type" of "chat",
    // navigate to a chat screen
    if (initialMessage != null) {
      //TODO: INITIAL MESSAGE HANDLING
   //   _handleMessage(initialMessage);
    }

    FirebaseMessaging.instance.setForegroundNotificationPresentationOptions(alert: true,badge: true,sound: true);


    // Also handle any interaction when the app is in the background via a
    // Stream listener

    //TODO: INITIAL MESSAGE HANDLING
   // FirebaseMessaging.onMessageOpenedApp.listen(_handleMessage);
  }

  //TODO: INITIAL MESSAGE HANDLING
  */ /*void _handleMessage(RemoteMessage message) {
    if (message.data['type'] == 'chat') {
      Navigator.pushNamed(context, '/chat',
        arguments: ChatArguments(message),
      );
    }
  }*/ /*

  final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
  FlutterLocalNotificationsPlugin();*/

  @override
  void initState() {
    // TODO: implement initState
    //SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
    super.initState();
    //setupInteractedMessage();
  }

  @override
  void dispose() {
    //  SystemChrome.restoreSystemUIOverlays();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return EasySplashScreen(
      logo: PngAssests.logo,
      logoWidth: 150.78.w,
      /* title:  Text(
        'Customer',
        style: TextStyle(
          color: CustomColors.color1,
          fontWeight: FontWeight.w500,
          fontSize: 40.sp,
          fontFamily: 'Rubik',
        ),
      ),*/
      //backgroundColor: CustomColors.color4,
      showLoader: false,
      //loadingText: const Text("Loading...",style: TextStyle(color: CustomColors.color1),),
      futureNavigator: context.read<AuthViewmodel>().checkSplash(),
      // navigator: const IntroSlidesScreen(),
      durationInSeconds: 1,
      loaderColor: CustomColors.orangeColor,
    );
  }
}
