import 'package:flutter/material.dart';
import 'package:links_landing_page/landing_page.dart';

class PhonePreview extends StatelessWidget {
  const PhonePreview({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Text(
              'Preview',
              style: TextStyle(fontSize: 30),
            ),
          ),
          Expanded(
            child: Container(
              width: 450,
              padding: EdgeInsets.all(30),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(60),
                  ),
                  boxShadow: [
                    BoxShadow(
                      spreadRadius: -23,
                      color: Colors.grey.shade400,
                      blurRadius: 15,
                    ),
                  ]),
              child: LandingPage(
                boxDecoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(width: 10),
                  borderRadius: BorderRadius.all(
                    Radius.circular(60),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
