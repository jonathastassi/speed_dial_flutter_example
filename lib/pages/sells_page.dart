import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:speed_dial_app/components/bottom_navigation.component.dart';
import 'package:speed_dial_app/components/speed_dial_sells.component.dart';

class SellsPage extends StatefulWidget {
  final int pageIndex;
  final Function onItemTapped;

  SellsPage(this.pageIndex, this.onItemTapped);

  @override
  _SellsPageState createState() =>
      _SellsPageState(this.pageIndex, this.onItemTapped);
}

class _SellsPageState extends State<SellsPage> {
  ScrollController scrollController;
  bool dialVisible = true;
  final int pageIndex;
  final Function onItemTapped;

  _SellsPageState(this.pageIndex, this.onItemTapped);

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
          title: Text("Vendas"),
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
        floatingActionButton: SpeedDialSellsComponent(dialVisible),
        bottomNavigationBar:
            BottomNavigationComponent(pageIndex, onItemTapped));
  }
}
