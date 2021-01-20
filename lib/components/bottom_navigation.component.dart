import 'package:flutter/material.dart';

class BottomNavigationComponent extends StatelessWidget {
  final int pageIndex;
  final Function onItemTapped;

  BottomNavigationComponent(this.pageIndex, this.onItemTapped);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: pageIndex,
      selectedItemColor: Theme.of(context).primaryColor,
      onTap: onItemTapped,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Cadastros',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.business),
          label: 'Vendas',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.school),
          label: 'Configurações',
        ),
      ],
    );
  }
}
