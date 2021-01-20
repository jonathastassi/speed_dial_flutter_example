import 'package:flutter/material.dart';
import 'package:speed_dial_app/components/speed_dial.component.dart';

class GenericPages extends StatelessWidget {
  final String title;

  GenericPages(this.title);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.save),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ));
  }
}
