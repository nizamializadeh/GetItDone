import 'package:flutter/material.dart';
import 'package:get_it_done/models/items_data.dart';
import 'package:provider/provider.dart';

class ItemAdd extends StatelessWidget {
  final textController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Expanded(
            child: Column(
              children: [
                Expanded(
                  flex: 4,
                  child: TextField(
                    minLines: 1,
                    maxLines: 3,
                    controller: textController,
                    style: TextStyle(color: Colors.black, fontSize: 20),
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Add Item',
                        hintText: '...'),
                    autofocus: true,
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: FlatButton(
                      onPressed: () {
                        Provider.of<ItemData>(context, listen: false)
                            .itemadd(textController.text);
                        Navigator.pop(context);
                      },
                      color: Theme.of(context).accentColor,
                      child: Text('ADD')),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
