import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'home.dart';
import 'models/statistics.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Demo #20200701',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          systemOverlayStyle: SystemUiOverlayStyle.dark,
          titleTextStyle: TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
        tabBarTheme: const TabBarTheme(
          labelColor: Colors.black,
          unselectedLabelColor: Colors.grey,
        ),
      ),
      home: MyHomePage(
        name: 'Bill Ku',
        bio: 'Long long long long long text',
        statistic: SocialStatisticData.demo(posts: 50),
      ),
    );
  }
}
