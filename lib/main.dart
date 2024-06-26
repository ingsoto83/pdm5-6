import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:pdm5/list_widget.dart';
import 'package:pdm5/login_page.dart';
import 'package:pdm5/place_widget.dart';

import 'firebase_options.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(
      MaterialApp(
       title: "PDM5",
        home: LoginPage(),
    )
  );
}
