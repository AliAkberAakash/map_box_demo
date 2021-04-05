import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:location/location.dart';
import 'di/dependency_injection.dart';
import 'ui/features/home/home_page.dart';
import 'utils/my_colors.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  setup();
  await getPermission();
  runApp(MyApp());
}

getPermission() async{
  if (!kIsWeb) {
    final location = Location();
    final hasPermissions = await location.hasPermission();
    if (hasPermissions != PermissionStatus.GRANTED) {
      await location.requestPermission();
    }
  }
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hello World',
      theme: ThemeData(
        primaryColor: primary,
        primaryColorDark: primary_dark,
        accentColor: accent,

        // Define the default font family.
        fontFamily: 'Georgia',

      ),
      home: HomePage(),
    );
  }
}
