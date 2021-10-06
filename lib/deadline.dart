import 'package:flutter/material.dart';
class Deadline extends StatelessWidget {
  const Deadline({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Deadline and success"),
      ),
      body: ListView(
        children: [
          Text("Full article"),
          SizedBox(height:23),
          Expanded(child: Image.asset('images/Six-Tips-to-Ensure-you-Never-Miss-Another-Deadline.jpg'),),
          ElevatedButton.icon(onPressed: () {Navigator.pop(context);}, icon: Icon(Icons.assignment_return), label: Text("Back"))
        ]
      )
    );
  }
}
