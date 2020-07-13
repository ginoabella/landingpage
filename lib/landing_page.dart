import 'package:flutter/material.dart';
import 'package:links_landing_page/button_link.dart';

class LandingPage extends StatelessWidget {
  final Decoration boxDecoration;

  LandingPage({Key key, this.boxDecoration}) : super(key: key);

  final socialLinks = [
    {'text': 'Udemy', 'url': 'https://www.udemy.com'},
    {'text': 'Facebook', 'url': 'https://www.facebook.com'},
    {'text': 'LinkLn', 'url': 'https://www.linkedin.com'},
  ];

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Container(
        decoration: boxDecoration,
        child: Column(
          children: [
            SizedBox(height: 20),
            Image.network(
              'https://drive.google.com/uc?export=view&id=18RIcXRQpftjCVTlIujddsl5OsbhbGARt',
              height: 96,
              width: 96,
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text(
                '@ginoabella',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
            ),
            SizedBox(height: 20),
            for (var data in socialLinks)
              LinkButton(
                //width: width,
                text: data['text'],
                url: data['url'],
              ),
            Spacer(),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Build in Flutter',
                  style: TextStyle(
                    fontSize: 19,
                    color: Colors.black,
                  ),
                ),
                SizedBox(width: 10),
                Image.network(
                  'https://drive.google.com/uc?export=view&id=1bVZ0B1HHn2WnAXWZ4zdzjEaYE5W8Ua6I',
                  height: 60,
                  width: 60,
                ),
              ],
            ),
            SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
