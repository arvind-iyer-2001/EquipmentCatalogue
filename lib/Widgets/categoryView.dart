import 'package:equipmentCatalogue/Models/equipmentModels.dart';
import '../Models/sample_data.dart';
import 'package:flutter/material.dart';

import 'equipmentGrid.dart';

class CategoryView extends StatefulWidget {
  @override
  _CategoryViewState createState() => _CategoryViewState();
}

class _CategoryViewState extends State<CategoryView> {
  static const List<EquipmentItem> equipmentItems = [...equipments];
  List<EquipmentItem> displayedItems = [];
  String currentCategoryId;
  @override
  void initState() {
    currentCategoryId = "mc00";
    displayedItems = [...equipmentItems];
    super.initState();
  }

  void update(String value) {
    setState(() {
      currentCategoryId = value;
      if (value == "mc00") {
        displayedItems = equipmentItems;
      } else {
        displayedItems = [
          ...equipmentItems.where(
              (equipment) => equipment.categoryId.contains(currentCategoryId))
        ];
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // Dropdown to Choose Category
          DropdownButtonFormField(
            items: [
              DropdownMenuItem(
                child: Text("All"),
                value: "mc00",
              ),
              ...Categories.map((mainCategory) {
                return DropdownMenuItem(
                  child: Text(mainCategory.title),
                  value: mainCategory.id,
                );
              })
            ],
            value: currentCategoryId,
            onChanged: (value) {
              setState(() {
                currentCategoryId = value;
              });
            },
          ),

          // Container with Grid of Items
          Expanded(
            child: EquipmentGrid(displayedItems: displayedItems),
          )
        ],
      ),
    );
  }
}
