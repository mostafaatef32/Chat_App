import 'package:chaat_aapp/api/firebase_api.dart';
import 'package:chaat_aapp/page/chats_page.dart';
import 'package:chaat_aapp/users.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await FirebaseApi.addRandomUsers(Users.initUsers);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static final String title = 'Firebase Chat';

  @override
  Widget build(BuildContext context) => MaterialApp(
    debugShowCheckedModeBanner: false,
    title: title,
    theme: ThemeData(primarySwatch: Colors.deepOrange),
    home: ChatsPage(),
  );
}
