import 'package:flutter/material.dart';
import 'package:get_it_done/models/items_data.dart';
import 'package:get_it_done/screens/item_add.dart';
import 'package:get_it_done/screens/settings_page.dart';
import 'package:get_it_done/widgets/item_card.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      appBar: AppBar(
        title: Text("Get It Done"),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
              icon: Icon(
                Icons.settings,
                size: 25,
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SettingsPage()));
              },
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  '${Provider.of<ItemData>(context).items.length} Items',
                  style: Theme.of(context).textTheme.headline3,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 4,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(50))),
                child: Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: ListView.builder(
                    itemCount: Provider.of<ItemData>(context).items.length,
                    itemBuilder: (context, index) => ItemCard(
                      title: Provider.of<ItemData>(context).items[index].title,
                      isDone:
                          Provider.of<ItemData>(context).items[index].isDone,
                      toogleStatus: (_) {
                        Provider.of<ItemData>(context, listen: false)
                            .toggleStatus(index);
                      },
                      itemremove: (_) {
                        Provider.of<ItemData>(context, listen: false)
                            .itemremove(index);
                      },
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25)),
              context: context,
              builder: (context) => ItemAdd());
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
