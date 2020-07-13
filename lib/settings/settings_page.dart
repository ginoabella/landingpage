import 'package:flutter/material.dart';
import 'package:links_landing_page/settings/phone_preview.dart';
import 'package:links_landing_page/settings/add_button.dart';

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(
            flex: 3,
            child: LayoutBuilder(
              builder: (context, constraint) => Container(
                color: Colors.grey.shade100,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AddButton(width: constraint.maxWidth * 0.6),
                  ],
                ),
              ),
            ),
          ),
          PhonePreview(),
        ],
      ),
    );
  }
}
