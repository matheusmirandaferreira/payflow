import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:payflow/shared/theme/app_colors.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: 
        AppBar(title: Text('Home page'), 
        backgroundColor: AppColors.primary,
      ),
    );
  }
}