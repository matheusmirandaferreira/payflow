import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:payflow/shared/theme/app_colors.dart';

import 'modules/login/login_page.dart';

class AppFireBase extends StatefulWidget {
  const AppFireBase({Key? key}) : super(key: key);

  @override
  State<AppFireBase> createState() => _AppFireBaseState();
}

class _AppFireBaseState extends State<AppFireBase> {
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pay Flow',
      theme: ThemeData(primaryColor: AppColors.primary),
      home: LoginPage()
    );
  }
}
