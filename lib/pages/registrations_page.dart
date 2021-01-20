import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:speed_dial_app/components/bottom_navigation.component.dart';
import 'package:speed_dial_app/components/speed_dial.component.dart';

class RegistrationsPage extends StatefulWidget {
  final int pageIndex;
  final Function onItemTapped;

  RegistrationsPage(this.pageIndex, this.onItemTapped);

  @override
  _RegistrationsPageState createState() =>
      _RegistrationsPageState(this.pageIndex, this.onItemTapped);
}

class _RegistrationsPageState extends State<RegistrationsPage> {
  ScrollController scrollController;
  bool dialVisible = true;
  final int pageIndex;
  final Function onItemTapped;

  _RegistrationsPageState(this.pageIndex, this.onItemTapped);

  @override
  void initState() {
    super.initState();

    scrollController = ScrollController()
      ..addListener(() {
        setDialVisible(scrollController.position.userScrollDirection ==
            ScrollDirection.forward);
      });
  }

  void setDialVisible(bool value) {
    setState(() {
      dialVisible = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Cadastros"),
        ),
        body: SingleChildScrollView(
          controller: scrollController,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text("Teste 1"),
              Text("Teste 2"),
              Text("Teste 1"),
              Text("Teste 1"),
              Text("Teste 1"),
              Text("Teste 1"),
              Text("Teste 1"),
              Text("Teste 1"),
              Text("Teste 1"),
              Text("Teste 1"),
              Text("Teste 1"),
              Text("Teste 1"),
              Text("Teste 1"),
              Text("Teste 1"),
              Text("Teste 1"),
              Text("Teste 1"),
              Text("Teste 1"),
              Text("Teste 1"),
              Text("Teste 1"),
              Text("Teste 1"),
              Text("Teste 1"),
              Text("Teste 1"),
              Text("Teste 1"),
              Text("Teste 1"),
              Text("Teste 1"),
              Text("Teste 1"),
              Text("Teste 1"),
              Text("Teste 1"),
              Text("Teste 1"),
              Text("Teste 1"),
              Text("Teste 1"),
              Text("Teste 1"),
              Text("Teste 1"),
              Text("Teste 1"),
              Text("Teste 1"),
              Text("Teste 1"),
              Text("Teste 1"),
              Text("Teste 1"),
              Text("Teste 1"),
              Text("Teste 1"),
              Text("Teste 1"),
              Text("Teste 1"),
              Text("Teste 1"),
              Text("Teste 2"),
            ],
          ),
        ),
        floatingActionButton: SpeedDialComponent(dialVisible),
        bottomNavigationBar:
            BottomNavigationComponent(pageIndex, onItemTapped));
  }
}
