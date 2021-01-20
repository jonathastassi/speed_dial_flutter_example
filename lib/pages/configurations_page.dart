import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:speed_dial_app/components/bottom_navigation.component.dart';
import 'package:speed_dial_app/components/speed_dial.component.dart';

class ConfigurationsPage extends StatefulWidget {
  final int pageIndex;
  final Function onItemTapped;

  ConfigurationsPage(this.pageIndex, this.onItemTapped);

  @override
  _ConfigurationsPageState createState() =>
      _ConfigurationsPageState(this.pageIndex, this.onItemTapped);
}

class _ConfigurationsPageState extends State<ConfigurationsPage> {
  ScrollController scrollController;
  bool dialVisible = true;
  final int pageIndex;
  final Function onItemTapped;

  _ConfigurationsPageState(this.pageIndex, this.onItemTapped);

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
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
            title: Text("Configurações"),
            bottom: TabBar(
              tabs: <Widget>[
                Tab(
                  icon: Icon(Icons.system_update),
                  text: "Sistema",
                ),
                Tab(
                  icon: Icon(Icons.work),
                  text: "Gerais",
                )
              ],
            )),
        body: TabBarView(
          children: <Widget>[
            Center(
              child: Text("Sistema"),
            ),
            Center(
              child: Text("Gerais"),
            )
          ],
        ),
        bottomNavigationBar: BottomNavigationComponent(pageIndex, onItemTapped),
      ),
    );
  }
}
