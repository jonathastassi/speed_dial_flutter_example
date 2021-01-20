import 'package:flutter/material.dart';
import 'package:speed_dial_app/pages/configurations_page.dart';
import 'package:speed_dial_app/pages/registrations_page.dart';
import 'package:speed_dial_app/pages/sells_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int pageIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      pageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> pages = [
      RegistrationsPage(pageIndex, _onItemTapped),
      SellsPage(pageIndex, _onItemTapped),
      ConfigurationsPage(pageIndex, _onItemTapped),
    ];

    return pages[pageIndex];
  }
}
