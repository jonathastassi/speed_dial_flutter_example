import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:speed_dial_app/pages/generic_page.dart';

class SpeedDialSellsComponent extends StatelessWidget {
  final bool dialVisible;

  SpeedDialSellsComponent(this.dialVisible);

  @override
  Widget build(BuildContext context) {
    return SpeedDial(
      animatedIcon: AnimatedIcons.add_event,
      visible: this.dialVisible,
      curve: Curves.slowMiddle,
      children: [
        SpeedDialChild(
            child: Icon(
              Icons.send,
            ),
            onTap: () => {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (_) => GenericPages("Pedidos"),
                  ))
                },
            label: "Pedidos"),
        SpeedDialChild(
            child: Icon(
              Icons.archive,
            ),
            onTap: () => {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (_) => GenericPages("Notas Fiscais"),
                  ))
                },
            label: "Notas Fiscais"),
      ],
    );
  }
}
