import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:url_launcher/url_launcher.dart';

class LinkButton extends StatelessWidget {
  const LinkButton({
    //@required this.width,
    @required this.text,
    @required this.url,
  });

  //final double width;
  final String text;
  final String url;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) => Padding(
        padding: const EdgeInsets.only(bottom: 16.0),
        child: SizedBox(
          width: constraints.maxWidth > 768 ? 768 : constraints.maxWidth * 0.95,
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
      ),
    );
  }
}
