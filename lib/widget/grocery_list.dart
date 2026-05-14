import 'package:flutter/material.dart';
import 'package:shopping_list_app/models/grocery_item.dart';
import 'package:shopping_list_app/widget/new_item.dart';

class GroceryList extends StatefulWidget {
  const GroceryList({super.key});

  @override
  State<GroceryList> createState() => _GroceryListState();
}

class _GroceryListState extends State<GroceryList> {
  final List<GroceryItem> _groceryItems = [];

  void _addItem() async {
    final newItem = await Navigator.of(context).push<GroceryItem>(
      MaterialPageRoute(
        builder: (ctx) {
          return const NewItem();
        }
      )
    );

    setState(() {
      _groceryItems.add(newItem!);
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget content = _groceryItems.isEmpty ? Center(
      child: Text("No items added yet"),
    ) : ListView.builder(
        itemCount: _groceryItems.length,
        itemBuilder: (context, index) {
          return Dismissible(
            onDismissed: (direction) {
              setState(() {
                _groceryItems.removeAt(index);
              });
            },
            background: Container(
              color: Colors.red,
              child: 
              Row(
                children: [
                  Spacer(),
                  Icon(Icons.delete, color: Colors.white),
                  SizedBox(width: 20)
                ],
              ),
            ),
            key: ValueKey(_groceryItems[index].id), 
            child: ListTile(
              leading: Icon(Icons.square, color: _groceryItems[index].category.color,),
              title: Text(_groceryItems[index].name),
              trailing: Text(_groceryItems[index].quantity.toString()),
            ),
          );
        },
      );

    return Scaffold(
      appBar: AppBar(
        title: Text("Your groceries"),
        actions: [
          IconButton(
            icon: Icon(Icons.add),
            onPressed: _addItem
          ),
        ],
      ),
      body: content
    );
  }
}