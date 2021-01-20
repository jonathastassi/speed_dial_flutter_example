import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:speed_dial_app/pages/generic_page.dart';

class SpeedDialComponent extends StatelessWidget {
  final bool dialVisible;

  SpeedDialComponent(this.dialVisible);

  @override
  Widget build(BuildContext context) {
    return SpeedDial(
      animatedIcon: AnimatedIcons.add_event,
      visible: this.dialVisible,
      curve: Curves.slowMiddle,
      children: [
        SpeedDialChild(
            child: Icon(
              Icons.people,
            ),
            onTap: () => {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (_) => GenericPages("Fornecedor"),
                  ))
                },
            label: "Fornecedor"),
        SpeedDialChild(
            child: Icon(
              Icons.book,
            ),
            onTap: () => {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (_) => GenericPages("Produtos"),
                  ))
                },
            label: "Produtos"),
        SpeedDialChild(
            child: Icon(
              Icons.dock_outlined,
            ),
            onTap: () => {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (_) => GenericPages("Vendas"),
                  ))
                },
            label: "Vendas"),
      ],
    );
  }
}
