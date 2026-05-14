import 'package:flutter/material.dart';
import 'package:shopping_list_app/data/categories.dart';
import 'package:shopping_list_app/models/category.dart';
import 'package:shopping_list_app/models/grocery_item.dart';

class NewItem extends StatefulWidget {
  const NewItem({super.key});

  @override
  State<NewItem> createState() => _NewItemState();
}

class _NewItemState extends State<NewItem> {
  final _formKey = GlobalKey<FormState>();
  var _enteredName = "";
  var _enteredQuantity = 1;
  var _selectedCategory = categories[Categories.vegetables]!;

  void _saveItem() {
    final isValid = _formKey.currentState!.validate();

    if (isValid) {
      _formKey.currentState!.save();
      Navigator.of(context).pop(
        GroceryItem(
          id: DateTime.now().toString(), 
          name: _enteredName, 
          quantity: _enteredQuantity, 
          category: _selectedCategory
        )
      );
    }
  }

  void _resetForm() {
    _formKey.currentState!.reset();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add New Item"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                 maxLength: 50,
                 decoration: const InputDecoration(
                  label: Text("Name"),
                 ),
                 validator: (value) {
                  if (
                    value == null || 
                    value.isEmpty || 
                    value.trim().length <= 1 ||
                    value.trim().length > 50
                  ) {
                    return "Name must be between 2 and 50 characters";
                  }

                  return null;
                 },
                 onSaved: (value) {
                  _enteredName = value!;
                 },
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Expanded(
                    child: TextFormField(
                      decoration: const InputDecoration(
                        label: Text("Quantity"),
                      ),
                      keyboardType: TextInputType.number,
                      initialValue: _enteredQuantity.toString(),
                      validator: (value) {
                        if (
                          value == null || 
                          value.isEmpty || 
                          int.tryParse(value) == null ||
                          int.tryParse(value)! <= 0 ||
                          value.trim().length > 50
                        ) {
                          return "Quantity must be a valid positive number";
                        }

                        return null;
                      },
                      onSaved: (value) {
                        _enteredQuantity = int.tryParse(value!)!;
                      },
                    ),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: DropdownButtonFormField(
                      initialValue: _selectedCategory,
                      items: [
                        for(final category in categories.entries) 
                          DropdownMenuItem(
                            value: category.value,
                            child: Row(
                              children: [
                                Icon(Icons.square, color: category.value.color),
                                SizedBox(width: 6),
                                Text(category.value.title),
                              ],
                            )
                          )
                      ],
                      onChanged: (value) {
                        _selectedCategory = value!;
                      },
                    )
                  ),
                ],
              ),
              SizedBox(height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: _resetForm, 
                    child: const Text("Reset")
                  ),
                  ElevatedButton(
                    onPressed: _saveItem, 
                    child: const Text("Add item")
                  )
                ],
              ),
            ],
          )
        ),
      ),
    );
  }
}