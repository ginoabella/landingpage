import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Links Landing Page',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Material(child: LinksLandingPage()),
    );
  }
}

class LinksLandingPage extends StatelessWidget {
  final socialLinks = [
    {'text': 'Udemy', 'url': 'https://www.udemy.com'},
    {'text': 'Facebook', 'url': 'https://www.facebook.com'},
    {'text': 'LinkLn', 'url': 'https://www.linkedin.com'},
  ];
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Container(
      child: Column(
        children: [
          SizedBox(height: 35),
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
              width: width,
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
                  'https://drive.google.com/uc?export=view&id=1bVZ0B1HHn2WnAXWZ4zdzjEaYE5W8Ua6I'),
            ],
          ),
          SizedBox(height: 30),
        ],
      ),
    );
  }
}

class LinkButton extends StatelessWidget {
  const LinkButton({
    @required this.width,
    @required this.text,
    @required this.url,
  });

  final double width;
  final String text;
  final String url;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: SizedBox(
        width: width > 768 ? 768 : width * 0.95,
        child: FlatButton(
          padding: EdgeInsets.symmetric(vertical: 20),
          color: Color.fromRGBO(57, 224, 155, 1),
          onPressed: () => launch(url),
          child: Text(
            text,
            style: TextStyle(
              color: Colors.white,
              fontSize: 15,
            ),
          ),
        ),
      ),
    );
  }
}
