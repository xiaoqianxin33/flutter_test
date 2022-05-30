import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/**
 * @author     肖前欣
 * description
 */

class DrawerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        DrawerHeader(
          decoration: BoxDecoration(
            color: Colors.lightBlueAccent,
          ),
          child: Center(
            child: SizedBox(
              width: 60.0,
              height: 60.0,
              child: CircleAvatar(
                child: Text('R'),
              ),
            ),
          ),
        ),
        ListTile(
          leading: Icon(Icons.settings),
          title: Text('设置'),
        )
      ],
    );
  }
}
