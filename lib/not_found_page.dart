import 'package:flutter/material.dart';

class NotFoundPage extends StatelessWidget {
  final String routeName;
  NotFoundPage(this.routeName);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('${routeName.substring(1)}  Not Found')),
    );
  }
}
