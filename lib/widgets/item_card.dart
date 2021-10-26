import 'package:flutter/material.dart';

class ItemCard extends StatelessWidget {
  final String title;
  final bool isDone;
  final Function toogleStatus;
  final Function itemremove;
  ItemCard({this.title, this.isDone, this.toogleStatus, this.itemremove});

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      onDismissed: itemremove,
      key: Key(title),
      child: Card(
        color: isDone ? Colors.green.shade50 : Colors.white,
        elevation: isDone ? 1 : 5,
        shadowColor: Theme.of(context).primaryColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: ListTile(
          title: Text(
            title,
            style: TextStyle(
                color: Colors.black,
                decoration: isDone ? TextDecoration.lineThrough : null),
          ),
          trailing: Checkbox(
            onChanged: toogleStatus,
            value: isDone,
            activeColor: Colors.green,
          ),
        ),
      ),
    );
  }
}
