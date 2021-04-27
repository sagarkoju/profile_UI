import 'package:flutter/material.dart';

class NumberWidget extends StatefulWidget {
  @override
  _NumberWidgetState createState() => _NumberWidgetState();
}

class _NumberWidgetState extends State<NumberWidget> {
  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              "Skill",
              style: TextStyle(
                  fontSize: 24, fontWeight: FontWeight.bold, color: Colors.red),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                buildButton(context, '90%', 'Flutter'),
                buildDivider(),
                buildButton(context, '70%', 'Dart'),
                buildDivider(),
                buildButton(context, '80%', 'Firebase'),
                buildDivider(),
                buildButton(context, '50%', 'Dot Net'),
                buildDivider(),
                buildButton(context, '40%', 'WordPress'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildButton(BuildContext context, String s, String t) {
    return MaterialButton(
      onPressed: () {},
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 30,
            child: Text(
              s,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            ),
          ),
          SizedBox(
            height: 4,
          ),
          Text(
            t,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
          ),
        ],
      ),
    );
  }

  Widget buildDivider() {
    return Container(height: 30, child: VerticalDivider());
  }
}
