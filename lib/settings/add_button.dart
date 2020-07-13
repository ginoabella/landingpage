import 'package:flutter/material.dart';

class AddButton extends StatelessWidget {
  final double width;
  const AddButton({
    Key key,
    this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: FlatButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        padding: EdgeInsets.symmetric(vertical: 20),
        color: Colors.greenAccent.shade400,
        onPressed: () {},
        child: Text(
          'Add Button',
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
